import 'package:hackdfw/styles.dart';
import 'package:flutter/material.dart';

class ChatContent extends StatefulWidget {
  @override
  _ChatContentState createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget _dailyDialog() {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      //TODO: TWEAK THE SIZING. DOESN'T LOOK RIGHT ON PHYSICAL DEVICE
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 2.16 * SizeConfig.heightMultiplier,
          horizontal: 4.67 * SizeConfig.widthMultiplier,
        ),
        width: 58.41 * SizeConfig.widthMultiplier,
        height: _userHasSelected
            ? 33.5 * SizeConfig.heightMultiplier
            : 26.45 * SizeConfig.heightMultiplier,
        decoration: BoxDecoration(
          color: AppTheme.kOffWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            /*
            Heading
            */
            Text(
              "When do you want to get notified with your matches?",
              style: AppTheme.kNotificationHeading,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2.7 * SizeConfig.heightMultiplier,
            ),
            /*
            Current selected time
            */
            Text(
              "Current selected time: ${_time.format(context)}",
              style: AppTheme.kNotificationDescription,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 2.7 * SizeConfig.heightMultiplier,
            ),

            /*
            way for user to select time again
             */
            _userHasSelected
                ? GestureDetector(
                    onTap: () {
                      globals.selectedNotificationTime = _time.format(context);
                      _selectTime();
                    },
                    child: Container(
                      height: 5.5 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment
                              .centerRight, // 10% of the width, so there are ten blinds.
                          colors: <Color>[
                            AppTheme.kBlue,
                            AppTheme.kMintGreen,
                          ], // red to yellow
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Select Time",
                          style: TextStyle(
                            fontSize: 2 * SizeConfig.textMultiplier,
                          ),
                        ),
                      ),
                    ),
                  )
                : SizedBox(
                    height: 0,
                  ),
            SizedBox(
              height: _userHasSelected ? 1.61 * SizeConfig.heightMultiplier : 0,
            ),
            /*
            button
            */
            GestureDetector(
              onTap: () async {
                if (_userHasSelected) {
                  /*
                  saved to shared preference here - use async func
                   */
                  globals.selectedNotificationTime = _time.format(context);
                  Navigator.pop(context);
                  print(globals.selectedNotificationTime);
                } else {
                  _selectTime();
                }
              },
              child: Container(
                height: 5.5 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment
                        .centerRight, // 10% of the width, so there are ten blinds.
                    colors: <Color>[
                      AppTheme.kBlue,
                      AppTheme.kMintGreen,
                    ], // red to yellow
                  ),
                ),
                child: Center(
                  child: Text(
                    _userHasSelected ? "Confirm" : "Select time",
                    style: TextStyle(
                      fontSize: 2 * SizeConfig.textMultiplier,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
