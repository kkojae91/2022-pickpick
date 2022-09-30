import { RefObject, useEffect, useRef } from "react";

import { Props as InfiniteScrollProps } from "@src/components/@shared/InfiniteScroll";

type Props = Omit<InfiniteScrollProps, "children">;

interface ReturnType {
  targetRef: RefObject<HTMLDivElement>;
}

function useIntersectionObserver({
  callback,
  threshold,
  endPoint,
}: Props): ReturnType {
  const targetRef = useRef<HTMLDivElement>(null);
  const observer = useRef(
    new IntersectionObserver(onIntersect, {
      threshold,
    })
  ).current;

  function onIntersect([entry]: IntersectionObserverEntry[]) {
    if (entry.isIntersecting) {
      callback();
    }
  }

  useEffect(() => {
    if (endPoint) {
      return observer && observer.disconnect();
    }

    if (targetRef && targetRef.current) {
      observer.observe(targetRef.current);
    }

    return () => observer && observer.disconnect();
  }, [callback, endPoint, observer, targetRef]);

  return { targetRef };
}

export default useIntersectionObserver;
