# יחידה 4: שיטות אינטגרציה לאינטגרל מסוים

מבוסס על: **calculus1B-notes** (פרק 10.2–10.3), **calculus1B-recitations** (תרגולים 7–9).

---

## 10.2 שיטות אינטגרציה לאינטגרל מסוים

!!! success "טענה 10.8 (אינטגרציה בחלקים)"
    תהיינה $F, g : [a,b] \to \mathbb{R}$ פונקציות גזירות ב־$[a,b]$, ונגזרותיהן אינטגרביליות רימן ב־$[a,b]$. אז
    $$\int_a^b F'(x) g(x)\,dx = F(b)g(b) - F(a)g(a) - \int_a^b F(x) g'(x)\,dx$$

??? example "הוכחה (רעיון)"
    גוזרים את $F \cdot g$ ומשלבים.

---

!!! success "טענה 10.9 (שינוי משתנה - סוג 1)"
    תהיינה $f : [a,b] \to \mathbb{R}$ ו־$g : [c,d] \to [a,b]$. נניח כי $f$ בעלת קדומה ואינטגרבילית ב־$[a,b]$, ש־$g$ גזירה ב־$[c,d]$ וש־$(f \circ g) \cdot g'$ אינטגרבילית על $[c,d]$. אז
    $$\int_c^d (f \circ g)(x) g'(x)\,dx = \int_{g(c)}^{g(d)} f(x)\,dx$$

---

!!! success "טענה 10.10 (שינוי משתנה - סוג 2)"
    תהיינה $f : [a,b] \to \mathbb{R}$ ו־$g : [c,d] \to [a,b]$ כך ש־$f$ אינטגרבילית, $g$ גזירה והפיכה ו־$g'$ רציפה. אז $(f \circ g) \cdot g'$ אינטגרבילית ומתקיים
    $$\int_a^b f(x)\,dx = \int_{g^{-1}(a)}^{g^{-1}(b)} (f \circ g)(x) g'(x)\,dx$$

!!! note "הערה 10.11"
    מתקיים גם $\int_{g^{-1}(a)}^{g^{-1}(b)} f(g(x)) |g'(x)|\,dx = \int_a^b f(x)\,dx$ (תלוי בסדר הגבולות).

---

## דוגמאות לשינוי משתנה

!!! example "דוגמה: $\int_0^1 \sqrt{1-x^2}\,dx$"
    זהו שטח רבע מעגל היחידה! נחשב עם שינוי משתנה $x = \sin t$:

    נגדיר $g(t) = \sin t$ על $[0,\frac{\pi}{2}]$. אז $g(0) = 0$, $g(\frac{\pi}{2}) = 1$, ו־$g'(t) = \cos t$.

    $$\int_0^1 \sqrt{1-x^2}\,dx = \int_0^{\pi/2} \sqrt{1-\sin^2 t} \cdot \cos t\,dt = \int_0^{\pi/2} \cos^2 t\,dt$$
    $$= \int_0^{\pi/2} \frac{1+\cos(2t)}{2}\,dt = \frac{1}{2}\Big[t + \frac{\sin(2t)}{2}\Big]_0^{\pi/2} = \frac{\pi}{4}$$

!!! warning "דוגמה: טעות נפוצה בשינוי משתנה"
    בניסיון לחשב $\int_{-1}^1 \frac{1}{1+x^2}\,dx$ עם $g(x) = \frac{1}{x}$:

    **הבעיה:** הפונקציה $g(x) = \frac{1}{x}$ אינה מוגדרת ב־$0 \in [-1,1]$! יתרה מכך, $g([-1,0)) = (-\infty,-1]$ ו־$g((0,1]) = [1,+\infty)$, כך שהתחום והטווח אינם תואמים.

    **הפתרון הנכון:** חשבו ישירות:
    $$\int_{-1}^1 \frac{1}{1+x^2}\,dx = [\arctan x]_{-1}^1 = \frac{\pi}{4} - (-\frac{\pi}{4}) = \frac{\pi}{2}$$

---

## 10.3 משפט ערך הביניים

!!! success "טענה 10.12 (משפט ערך הביניים לאינטגרלים)"
    תהי $f : [a,b] \to \mathbb{R}$ אינטגרבילית. אז **קיים $\mu \in [\inf f, \sup f]$** כך ש־$\int_a^b f(x)\,dx = \mu(b-a)$.

    **יתר על כן:** אם $f$ **רציפה** אז **קיים $c \in [a,b]$** כך ש־$\int_a^b f(x)\,dx = f(c)(b-a)$.

!!! success "טענה 10.13 (גרסה ממושקלת)"
    תהיינה $f, g : [a,b] \to \mathbb{R}$ אינטגרביליות. נניח כי **$g \ge 0$**. אז **קיים $\mu \in [\inf f, \sup f]$** כך ש־
    $$\int_a^b f(x) g(x)\,dx = \mu \int_a^b g(x)\,dx$$

    **יתר על כן:** אם **$f$ רציפה** אז **קיים $c \in [a,b]$** כך ש־$\int_a^b f(x) g(x)\,dx = f(c) \int_a^b g(x)\,dx$.

---

## דוגמאות לאינטגרציה בחלקים

!!! example "דוגמה: $\int_0^1 x e^x\,dx$"
    נגדיר $F(x) = e^x$, $g(x) = x$. אז $F'(x) = e^x$, $g'(x) = 1$.
    $$\int_0^1 x e^x\,dx = [x e^x]_0^1 - \int_0^1 e^x\,dx = e - [e^x]_0^1 = e - (e-1) = 1$$

!!! example "דוגמה: $\int_0^{\pi} x \sin x\,dx$"
    נגדיר $F(x) = -\cos x$, $g(x) = x$. אז $F'(x) = \sin x$, $g'(x) = 1$.
    $$\int_0^{\pi} x \sin x\,dx = [-x\cos x]_0^{\pi} - \int_0^{\pi} (-\cos x)\,dx = \pi + [\sin x]_0^{\pi} = \pi$$

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו כי $\frac{2}{3\pi} \le \int_{2\pi}^{3\pi} \frac{\sin x}{x}\,dx \le \frac{1}{\pi}$.

??? success "פתרון"
    נגדיר $f(x) = \frac{1}{x}$, $g(x) = \sin x$ על $[2\pi, 3\pi]$. $f,g$ אלמנטריות ואינטגרביליות; $g \ge 0$.

    לפי טענה 10.13 קיים $c \in [2\pi, 3\pi]$ כך ש־$\int_{2\pi}^{3\pi} \frac{\sin x}{x}\,dx = \frac{1}{c} \int_{2\pi}^{3\pi} \sin x\,dx = \frac{2}{c}$.

    מתקיים $\int_{2\pi}^{3\pi} \sin x\,dx = [-\cos x]_{2\pi}^{3\pi} = -(-1) - (-1) = 2$.

    כיוון ש־$c \in [2\pi, 3\pi]$, מתקיים $\frac{1}{3\pi} \le \frac{1}{c} \le \frac{1}{2\pi}$, ומכאן $\frac{2}{3\pi} \le \int_{2\pi}^{3\pi} \frac{\sin x}{x}\,dx \le \frac{2}{2\pi} = \frac{1}{\pi}$.

!!! question "תרגיל 2"
    חשבו את האינטגרלים הבאים:

    - $\int_1^e (\ln x)^2\,dx$
    - $\int_0^{\pi/4} \tan^2 x\,dx$
    - $\int_0^1 x \arctan x\,dx$

!!! question "תרגיל 3"
    הוכיחו את נוסחת הרדוקציה: $\int_0^{\pi/2} \sin^n x\,dx = \frac{n-1}{n} \int_0^{\pi/2} \sin^{n-2} x\,dx$.

!!! question "תרגיל 4"
    תהי $f : [a,b] \to \mathbb{R}$ רציפה. הוכיחו כי:
    $$\lim_{h \to 0^+} \frac{1}{h} \int_a^{a+h} f(x)\,dx = f(a)$$
