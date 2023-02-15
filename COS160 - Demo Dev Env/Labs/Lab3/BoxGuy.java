import java.awt.*;

// program for lab3 to draw the box guy
public class BoxGuy {
    public static void main(String[] args) {
        DrawingPanel panel = new DrawingPanel(400,400);
        Graphics2D g = panel.getGraphics();
        panel.setBackground(Color.WHITE);
        // body
        g.setColor(Color.ORANGE);     
        g.fillRect(100,100,200,200);  
        // smile
        g.setColor(Color.WHITE);    
        g.fillOval(160,160,80,80);
        g.setColor(Color.ORANGE);
        g.fillOval(140,100,120,120);
        // eyes
        g.setColor(Color.BLACK);     
        g.fillOval(130,180,10,20);
        g.fillOval(260,180,10,20);
        // feet & legs
        g.setColor(Color.LIGHT_GRAY);    
        g.fillOval(100,340,80,40);		
        g.fillOval(220,340,80,40);
        g.setColor(Color.BLACK);    
        g.fillRect(140,300,20,65);
        g.fillRect(240,300,20,65);
        // arms & hands
        g.setColor(Color.BLACK);    
        g.fillRect(40,240,60,20);
        g.fillRect(300,240,60,20);
        g.setColor(Color.LIGHT_GRAY);    
        g.fillOval(20,230,40,40);		
        g.fillOval(340,230,40,40);
        // words
        g.setColor(Color.BLUE);
        g.setFont(new Font("Serif", Font.BOLD, 20));
        g.drawString("Hello",310,120);
    }
}
