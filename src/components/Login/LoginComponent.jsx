import { Image, View } from "react-native";
import { Button, Text } from "react-native-paper";
import LoginStyle from "./Login.style";

const LoginComponent = () => {
  return (
    <View style={LoginStyle.loginContainer}>
      {/************  App Name *************/}
      <View>
        <Text variant="displaySmall" style={LoginStyle.appName}>
          Nex Todo
        </Text>
      </View>

      {/************  Login With Google Button *************/}
      <View style={LoginStyle.buttonContainer}>
        <Button
          mode="outlined"
          labelStyle={LoginStyle.label}
          contentStyle={LoginStyle.content}
          style={LoginStyle.button}
          icon={() => (
            <Image
              source={require("../../../assets/images/google-logo.png")}
              style={LoginStyle.icon}
            />
          )}
          onPress={() => {
            console.log("Google Sign-In pressed");
          }}
        >
          Sign in with Google
        </Button>
      </View>

      {/************  Privacy Text *************/}
      <Text style={LoginStyle.privacyText}>
        By signing in, you agree to our Terms of Service and Privacy Policy.
      </Text>
    </View>
  );
};

export default LoginComponent;
