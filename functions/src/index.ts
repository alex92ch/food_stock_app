import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
admin.initializeApp();

export const sendNotificationToTopicFridge =
  functions.region("europe-west6").
      firestore.document("fridgeItemList/{fridgeID}").onWrite(async (event) => {
        const name: string = event.after.get("name");
        const amount: number = event.after.get("amount");
        const threshold: number = event.after.get("threshold");
        const message = {
          notification: {
            title: "Oh oh, etwas wurde weggefuttert!",
            body: `Aktuell hat es noch ${amount} von ${name}!`,
          },
          topic: "foodstock",
        };
        if (amount <= threshold) {
          await admin.messaging().send(message);
        }
      });
export const sendNotificationToTopicFreezer =
  functions.region("europe-west6").
      firestore.document("freezerItemList/{freezerID}").
      onWrite(async (event) => {
        const name: string = event.after.get("name");
        const amount: number = event.after.get("amount");
        const threshold: number = event.after.get("threshold");
        const message = {
          notification: {
            title: "Oh oh, etwas wurde weggefuttert!",
            body: `Aktuell hat es noch ${amount} von ${name}!`,
          },
          topic: "foodstock",
        };
        if (amount <= threshold) {
          await admin.messaging().send(message);
        }
      });
export const sendNotificationToTopicCupboard =
  functions.region("europe-west6").
      firestore.document("cupboardItemList/{cupboardID}").
      onWrite(async (event) => {
        const name: string = event.after.get("name");
        const amount: number = event.after.get("amount");
        const threshold: number = event.after.get("threshold");
        const message = {
          notification: {
            title: "Oh oh, etwas wurde weggefuttert!",
            body: `Aktuell hat es noch ${amount} von ${name}!`,
          },
          topic: "foodstock",
        };
        if (amount <= threshold) {
          await admin.messaging().send(message);
        }
      });
