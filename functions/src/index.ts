import * as functions from "firebase-functions";

const admin = require("firebase-admin");
admin.initializeApp(functions.config().firebase);

// TODO add cupboard and freezer function
// fridgeItems function
exports.fridgeItemIsLow = functions.region("europe-west6").firestore
  .document("fridgeItemList/{fridgeItemID}")
  .onWrite((change) => {
    const fridgeItemID = change.after.id;
    console.log("fridgeItemID", fridgeItemID);
    if (change.after.get("amount") == 0) {
      const itemName = change.after.get("name");
      const title = itemName + " aufgebraucht!";
      const body = itemName + " ist nicht mehr auf Lager!";
      const message = {
        data: {
          title: title,
          body: body,
          sound: "default",
        },
      };
      const options = {
        priority: "high",
        timeToLive: 60 * 60 * 24,
      };
      admin.messaging().
        sendToTopic("pushNotifications", payload, options);
    } else {
      // TODO nothing
    }
  });
