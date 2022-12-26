Future<bool> onWillPop() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backButtonOnPressedTime == null ||
        currentTime.difference(backButtonOnPressedTime!) >
            const Duration(seconds: 3);
    if (backButton) {
      backButtonOnPressedTime = currentTime;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Tap again",
            style: Style.whiteTextStyle,
          ),
        ),
      );
      return false;
    }
    return true;
  }
