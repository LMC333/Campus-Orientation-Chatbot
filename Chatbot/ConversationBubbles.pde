import java.util.Map;
import java.util.List;

class ConversationBubbles {
  List<Map.Entry<String, String>> conversation;
  int currentBubble;
  
  ConversationBubbles() {
    conversation = new ArrayList<>();
    currentBubble = 0;
  }
  
  void add(String human, String bot) {
    conversation.add(Map.entry(human, bot));
  }
  
  void display() {
    pushStyle();
    for (int i = 0; i < 4; i += 1) {
      if (i < conversation.size()) {
        Map.Entry<String, String> content = conversation.get(i);
        float boxWidth = width / 2.5 - 10;
        float boxHeight = height / 10;
        
        fill(#91F7C0);
        rect(10, i * (height / 5), boxWidth, boxHeight, 0, 25, 0, 25);
        fill(0);
        text(content.getKey(), 15, i * (height / 5) + 0.2 * boxHeight , boxWidth, boxHeight); 
        fill(#91CFF7);
        rect(width - width / 2.5 - 10, (i + 0.5) * (height / 5), boxWidth, boxHeight, 25, 0, 25, 0);
        fill(0);
        text(content.getValue(), width - width / 2.5, (i + 0.5) * (height / 5) + 0.2 * boxHeight, boxWidth, boxHeight); 
      }
    }
    popStyle();
  }
  
}
