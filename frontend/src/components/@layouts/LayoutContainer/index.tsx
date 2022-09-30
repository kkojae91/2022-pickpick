import { PropsWithChildren } from "react";
import { useLocation } from "react-router-dom";

import Header from "@src/components/@layouts/Header";
import Navigation from "@src/components/@layouts/Navigation";

import { PATH_NAME } from "@src/@constants";

import * as Styled from "./style";

function LayoutContainer({ children }: PropsWithChildren) {
  const { pathname } = useLocation();

  const hasHeader = () => pathname === PATH_NAME.HOME;
  const hasNavBar = () =>
    pathname !== PATH_NAME.HOME && pathname !== PATH_NAME.ADD_CHANNEL;

  return (
    <div>
      {hasHeader() && <Header />}
      <Styled.Main hasMarginTop={hasHeader()}>{children}</Styled.Main>
      {hasNavBar() && <Navigation />}
    </div>
  );
}

export default LayoutContainer;
