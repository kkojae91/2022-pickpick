package com.pickpick.message.domain;

import java.util.Optional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.Repository;

public interface BookmarkRepository extends Repository<Bookmark, Long> {

    Bookmark save(Bookmark bookmark);

    Optional<Bookmark> findById(Long id);

    @Query("select b from Bookmark b WHERE b.message.id = :messageId and b.member.id = :memberId")
    Optional<Bookmark> findByMessageIdAndMemberId(Long messageId, Long memberId);

    void deleteById(Long id);
}
