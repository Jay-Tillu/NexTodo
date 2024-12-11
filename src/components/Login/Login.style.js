import { StyleSheet } from "react-native";

const LoginStyle = StyleSheet.create({
  //========= App Name =========
  loginContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  appName: {
    textAlign: "center",
    alignItems: "center",
    justifyContent: "center",
    fontWeight: 700,
  },

  //========= Login Button =========
  buttonContainer: {
    position: "absolute",
    alignItems: "center",
    bottom: 220,
    width: "80%",
    paddingHorizontal: 20,
  },
  button: {
    width: "80%",
    borderRadius: 8,
  },
  content: {
    flexDirection: "row",
    justifyContent: "flex-start",
  },
  label: {
    fontSize: 16,
    color: "#000000",
  },
  icon: {
    width: 20,
    height: 20,
    marginRight: 10,
  },

  //========= Privacy Text =========
  privacyText: {
    textAlign: "center",
    color: "#424242",
    position: "absolute",
    bottom: 50,
    width: "70%",
  },
});

export default LoginStyle;
