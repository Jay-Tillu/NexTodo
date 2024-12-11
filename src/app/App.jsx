import { View, Text } from "react-native";
import React from "react";
import LoginComponent from "../components/Login/LoginComponent";
import { useFonts } from "expo-font";

const App = () => {
  // TODO: Add Geist Mono Fonts Here 
  const [loaded] = useFonts({});
  return (
    <View style={{ flex: 1 }}>
      <LoginComponent />
    </View>
  );
};

export default App;
