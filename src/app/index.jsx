import Theme from "../styles/Theme";
import App from "./App";
import { PaperProvider } from "react-native-paper";

const index = () => {
  return (
    <PaperProvider theme={Theme}>
      <App />
    </PaperProvider>
  );
};

export default index;
