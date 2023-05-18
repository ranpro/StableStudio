import { Next } from "./Next";
import { route } from "~/Util";

export function Logo(props: JSX.IntrinsicElements["img"]) {
  return <img src={route("/logo.png")} alt="Logo" {...props} />;
}

Logo.Next = Next;
