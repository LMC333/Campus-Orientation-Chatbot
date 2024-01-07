import interfascia.*;

import org.alicebot.ab.Bot;
import org.alicebot.ab.Chat;
import org.alicebot.ab.History;
import org.alicebot.ab.MagicBooleans;
import org.alicebot.ab.MagicStrings;
import org.alicebot.ab.utils.IOUtils;

// Uset interface elements
GUIController controller;
IFTextField userInput;
PFont chatFont;

// Chatbot elements
Bot botter;
Chat chatSession;
ConversationBubbles conversationBubbles;

void setup() {
  size(400, 800);

  createUI();
  createChatSession();
}


void draw() {
  background(0);
  conversationBubbles.display();
}
