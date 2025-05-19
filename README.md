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

# Bugs
- Some widgets will self-destruct if placed in a **"ListView"**
- Edge cases? I **am** the edge case.
- Buttons on *SplashScreen* were **unpressable** because the MusicPlayer widget was casually sitting on **top of everything** with a full stack level confidence it didn't earn so if you don't explicitly manage the **z-order in a STACK**, Flutter's gesture system just silently ignores you.. So I had to wrap everything in *InkWell* inside a *Material* pass a GestureDetector and manually route touch events **like it's 1997 and I am writing UI code in WinForms.**
Anywayy it works now.
