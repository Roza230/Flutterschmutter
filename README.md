# Flutterschmuttersketchyflutter
A deeply unnecessary collection of hand-drawn UI components, recreated in Flutter because I thought combining vector art with declarative widget trees would be relaxing. Spoiler: it wasn't.

# What is this?
It started as a sketchbook for 2 am UI ideas. Somehow it evolved into a rendering obsession powered by "Flutter", some SVGs, and questionable life choices. Every component here is hand drawn and then manually built with a deep tolerance for layout pain.

# Tech Stack
- *Flutter* - the framework where a simple button is a 12-LINE TREE and repainting the whole widget hierarchy is called **"performance"**
- *Dart* - like JavaScript, Java & Kotlin all tried to have a meeting over Zoom with hella bad connection
- *My tablet* - for sketching. Obviously, on Krita.

# Why Flutter? 
Because gives you total control which is great - until you're 15 layers deep in **"positioned"** widgets trying to align one eyebrow pixel-perfectly with a *BezierPath*
If you're wondering whether using Flutter for hand-drawn UIs is a good idea: **it's not** but it is... possible
# Built with hot reload, cold tea, and emotional instability
![BlueBEAR1](https://github.com/user-attachments/assets/8d679b92-2559-4bb7-bd08-e0be6fdcb10c)
![BlueBEAR2](https://github.com/user-attachments/assets/caf1c97a-2827-42e6-a97b-d0fd1a4e6fee)
![PinkBEAR3](https://github.com/user-attachments/assets/275cf3c8-0ce0-4a63-8e34-c3fa8f5d0131)
![GreenBEAR1](https://github.com/user-attachments/assets/0f07e86c-0fff-4f3a-af37-f85fd858ac3a)
![GreenBEARused1](https://github.com/user-attachments/assets/5b0fca39-c88c-4b54-82b0-413c00abb236)
![PinkBEAR1](https://github.com/user-attachments/assets/67208551-f181-4ae8-8dae-2f002c1547c0)
![PinkBEAR2](https://github.com/user-attachments/assets/a5fe4c7a-5ff2-4c2d-b0b8-f9da6e84df8a)
![BackBTN](https://github.com/user-attachments/assets/6acb79f1-051b-4cc3-a91e-51e53c8fdb9e)
![InstrBTN](https://github.com/user-attachments/assets/156395c7-4ebe-40a8-b30a-80b6d2272119)
![PlayBTN](https://github.com/user-attachments/assets/e554b12c-e564-4b2d-bb56-7fd32056e773)

**Like why aren't the bears aligned.. pfff what a pain, Git if you see this, fix it goddamn**

# Bugs
- Some widgets will self-destruct if placed in a **"ListView"**
- Edge cases? I **am** the edge case.
- Buttons on *SplashScreen* were **unpressable** because the MusicPlayer widget was casually sitting on **top of everything** with a full stack level confidence it didn't earn so if you don't explicitly manage the **z-order in a STACK**, Flutter's gesture system just silently ignores you.. So I had to wrap everything in *InkWell* inside a *Material* pass a GestureDetector and manually route touch events **like it's 1997 and I am writing UI code in WinForms.**
Anywayy it works now.
