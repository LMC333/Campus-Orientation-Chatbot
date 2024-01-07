
void createUI() {
  controller = new GUIController(this);
  userInput = new IFTextField("User Input", 0, height - 30, width);
  
  controller.add(userInput);
  userInput.addActionListener(this);
  
  chatFont = createFont("Helvetica", 16);
  textFont(chatFont);
  
  conversationBubbles = new ConversationBubbles();
}

void actionPerformed(GUIEvent element) {
  if (element.getMessage().equals("Completed")) {
    String userMessage = userInput.getValue();
    userInput.setValue("");
    sendToBot(userMessage);
  }
}
