package com.pickpick.slackevent.application.channel;

import com.pickpick.channel.domain.ChannelRepository;
import com.pickpick.channel.domain.ChannelSubscriptionRepository;
import com.pickpick.message.domain.MessageRepository;
import com.pickpick.slackevent.application.SlackEvent;
import com.pickpick.slackevent.application.SlackEventService;
import com.pickpick.slackevent.application.channel.dto.ChannelDeletedRequest;
import com.pickpick.utils.JsonUtils;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;

@Transactional
@Service
public class ChannelDeletedService implements SlackEventService {

    private final ChannelRepository channels;
    private final ChannelSubscriptionRepository channelSubscriptions;
    private final MessageRepository messages;

    public ChannelDeletedService(final ChannelRepository channels,
                                 final ChannelSubscriptionRepository channelSubscriptions,
                                 final MessageRepository messages) {
        this.channels = channels;
        this.channelSubscriptions = channelSubscriptions;
        this.messages = messages;
    }

    @Override
    public void execute(final String requestBody) {
        String channelSlackId = extractChannelSlackId(requestBody);

        messages.deleteAllByChannelSlackId(channelSlackId);
        channelSubscriptions.deleteAllByChannelSlackId(channelSlackId);
        channels.deleteBySlackId(channelSlackId);
    }

    private String extractChannelSlackId(final String requestBody) {
        ChannelDeletedRequest request = JsonUtils.convert(requestBody, ChannelDeletedRequest.class);
        return request.getEvent().getChannel();
    }

    @Override
    public boolean isSameSlackEvent(final SlackEvent slackEvent) {
        return SlackEvent.CHANNEL_DELETED == slackEvent;
    }
}
