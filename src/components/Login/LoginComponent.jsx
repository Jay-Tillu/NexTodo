import { StyleSheet, View } from "react-native";
import { Text } from "react-native-paper";
import LoginStyle from "./Login.style";

const LoginComponent = () => {
  return (
    <View style={LoginStyle.loginContainer}>
      <View>
        <Text variant="displaySmall" style={LoginStyle.appName}>
          Nex Todo
        </Text>
      </View>
      <View></View>
    </View>
  );
};

export default LoginComponent;

const styles = StyleSheet.create({});
