# פרק 9: פונקציות קדומות ואינטגרל לא מסוים

## 9.1 פונקציות קדומות

!!! info "הגדרה 9.1 (פונקציה קדומה)"
    יהי $I$ קטע ותהי $f : I \to \mathbb{R}$ פונקציה. נאמר כי פונקציה $F : I \to \mathbb{R}$ היא **קדומה** של $f$ כאשר $F$ גזירה ב-$I$ ומתקיים $F' = f$.

!!! success "טענה 9.2 (יחידות עד כדי קבוע)"
    יהי $I$ קטע, תהי $f : I \to \mathbb{R}$ פונקציה ותהי $F : I \to \mathbb{R}$ קדומה של $f$. אז לכל פונקציה $G : I \to \mathbb{R}$ מתקיים: **$G$ קדומה של $f$ אם ורק אם** קיים $c \in \mathbb{R}$ כך שלכל $x \in I$ מתקיים $G(x) = F(x) + c$.

!!! warning "הערה 9.3 (תכונת דרבו)"
    אם $F$ היא קדומה של $f$ אז לפי משפט דרבו, כיוון שמתקיים $F' = f$, נסיק כי $f$ מקיימת את **תכונת דרבו**. על כן — **לפונקציה שלא מקיימת את תכונת דרבו לא קיימת פונקציה קדומה.**

!!! example "דוגמה"
    הפונקציה
    $$f(x) = \begin{cases} 1 & x \ge 0 \\ -1 & x < 0 \end{cases}$$
    אין לה קדומה (היא לא מקיימת תכונת דרבו).

!!! info "סימון"
    יהי $I$ קטע ותהי $f : I \to \mathbb{R}$ פונקציה. נניח כי קיימת ל-$f$ קדומה. את **אוסף הקדומות** של $f$ נסמן $\int f(x)\,dx$. אם $F : I \to \mathbb{R}$ קדומה של $f$ אז נרשום $\int f(x)\,dx = F(x) + c$.

---

## 9.2 אינטגרלים בסיסיים

!!! note "טבלת אינטגרלים בסיסיים"
    1. $\int x^n\,dx = \frac{x^{n+1}}{n+1} + c$ — לכל $n \in \mathbb{N}$ ובכל קטע $I$.

    2. $\int x^\lambda\,dx = \frac{x^{\lambda+1}}{\lambda+1} + c$ — לכל $\lambda \in \mathbb{R} \setminus \{-1\}$ ובכל קטע $I \subseteq (0,+\infty)$.

    3. $\int \frac{1}{x}\,dx = \ln|x| + c$ — בכל קטע $I$ שאינו כולל את 0.

    4. $\int e^x\,dx = e^x + c$ — בכל קטע $I$.

    5. $\int a^x\,dx = \frac{a^x}{\ln a} + c$ — לכל $a \in (0,+\infty) \setminus \{1\}$ ובכל קטע $I$.

    6. $\int \sin x\,dx = -\cos x + c$, $\int \cos x\,dx = \sin x + c$ — בכל קטע $I$.

    7. $\int \frac{1}{\cos^2 x}\,dx = \tan x + c$ — בכל קטע $I \subseteq (-\frac{\pi}{2},\frac{\pi}{2})$.

    8. $\int \frac{1}{\sqrt{1-x^2}}\,dx = \arcsin x + c = -\arccos x + c_1$ — בכל קטע $I \subseteq (-1,1)$.

    9. $\int \frac{1}{1+x^2}\,dx = \arctan x + c$ — בכל קטע $I$.

---

## 9.3 שיטות למציאת פונקציה קדומה

### אינטגרציה בחלקים

!!! success "טענה 9.4 (אינטגרציה בחלקים)"
    יהי $I$ קטע ותהיינה $F, g : I \to \mathbb{R}$ פונקציות גזירות ב-$I$. נניח כי ל-$F \cdot g'$ קיימת קדומה ב-$I$. אז **קיימת** ל-$F' \cdot g$ קדומה ב-$I$ ומתקיים
    $$\int F'(x) g(x)\,dx = F(x) g(x) - \int F(x) g'(x)\,dx$$

??? example "הוכחה (רעיון)"
    לפי ההנחה קיימת ל-$F \cdot g'$ קדומה ב-$I$, נסמנה $H : I \to \mathbb{R}$. נתבונן ב-$F \cdot g - H$. מתקיים $(F \cdot g - H)' = F' \cdot g + F \cdot g' - F \cdot g' = F' \cdot g$. לכן $F \cdot g - H$ היא קדומה של $F' \cdot g$.

!!! example "דוגמה: קדומה ל-$\ln x$ בקטע $(0,+\infty)$"
    נגדיר $F(x) = x$, $g(x) = \ln x$. אז $F'(x) = 1$, $g'(x) = \frac{1}{x}$. מתקיים $F(x)g'(x) = 1$, ולכן $H(x)=x$ היא קדומה של $F \cdot g'$. לפי אינטגרציה בחלקים:
    $$\int \ln x\,dx = F(x)g(x) - \int F(x)g'(x)\,dx = x\ln x - \int 1\,dx = x\ln x - x + c$$

---

### שינוי משתנה (סוג 1)

!!! success "טענה 9.5 (שינוי משתנה - סוג 1)"
    יהיו $I, J$ קטעים ותהיינה $f : I \to \mathbb{R}$ ו-$g : J \to I$ פונקציות. נניח כי $f$ בעלת קדומה $F : I \to \mathbb{R}$, וכי $g$ גזירה ב-$J$. אז **קיימת** ל-$(f \circ g) \cdot g'$ קדומה ב-$J$ ומתקיים
    $$\int (f \circ g)(x) \cdot g'(x)\,dx = F(g(x)) + c$$

??? example "הוכחה (רעיון)"
    $(F \circ g)' = (F' \circ g) \cdot g' = (f \circ g) \cdot g'$, ולכן $F \circ g$ היא קדומה של $(f \circ g) \cdot g'$.

!!! example "דוגמה: קדומה ל-$\tan x$ בקטע $I = (-\frac{\pi}{2},\frac{\pi}{2})$"
    $\tan x = \frac{\sin x}{\cos x}$. נגדיר $g(x) = \cos x$ (מ-$I$ ל-$(0,+\infty)$), $f(u) = -\frac{1}{u}$. אז $F(u) = -\ln u$ קדומה של $f$, ו-$(f \circ g)(x) \cdot g'(x) = -\frac{1}{\cos x} \cdot (-\sin x) = \tan x$. לפי שינוי משתנה:
    $$\int \tan x\,dx = F(g(x)) + c = -\ln(\cos x) + c$$

---

### שינוי משתנה (סוג 2)

!!! success "טענה 9.6 (שינוי משתנה - סוג 2)"
    יהיו $I, J$ קטעים ותהיינה $f : I \to \mathbb{R}$ ו-$g : J \to I$ פונקציות. נניח כי $g$ גזירה ב-$J$, **על**, ו-$g'(x) \neq 0$ לכל $x \in J$. בנוסף נניח כי $(f \circ g) \cdot g' : J \to \mathbb{R}$ בעלת קדומה $F : J \to \mathbb{R}$. אז:

    1. $g$ הפיכה.
    2. קיימת ל-$f$ קדומה ב-$I$ ומתקיים $\int f(x)\,dx = F(g^{-1}(x)) + c$.

!!! example "דוגמה: $\int \frac{1}{1+\sqrt{x}}\,dx$ ב-$(0,+\infty)$"
    נגדיר $g(x) = x^2$ מ-$(0,+\infty)$ ל-$(0,+\infty)$. אז $g'(x) = 2x \neq 0$, ו-$(f \circ g)(x) \cdot g'(x) = \frac{1}{1+x} \cdot 2x = 2\big(1 - \frac{1}{1+x}\big)$. קדומה: $F(x) = 2(x - \ln(1+x))$. מתקיים $g^{-1}(x) = \sqrt{x}$. לכן
    $$\int \frac{1}{1+\sqrt{x}}\,dx = F(g^{-1}(x)) + c = 2\big(\sqrt{x} - \ln(1+\sqrt{x})\big) + c$$

---

## 9.4 אינטגרלים נוספים

!!! note "פונקציות טריגונומטריות והיפרבוליות"
    10. $\int \frac{1}{\sin^2 x}\,dx = -\cot x + c$ — בכל קטע $I \subseteq (0,\pi)$.

    11. $\int \sinh x\,dx = \cosh x + c$, $\int \cosh x\,dx = \sinh x + c$ — בכל קטע $I$.

    12. $\int \frac{1}{\sqrt{x^2+1}}\,dx = \text{arsinh}\,x + c = \ln(x + \sqrt{x^2+1}) + c$ — בכל קטע $I$.

    13. $\int \frac{1}{\sqrt{x^2-1}}\,dx = \text{arcosh}\,x + c = \ln(x + \sqrt{x^2-1}) + c$ — בכל קטע $I \subseteq (1,+\infty)$.

---

## 9.5 תכונות לינאריות

!!! success "טענה 9.7 (לינאריות)"
    יהי $I$ קטע ותהיינה $f, g : I \to \mathbb{R}$ פונקציות בעלות קדומות. אז:

    1. לכל $\alpha \in \mathbb{R}$, לפונקציה $\alpha f$ קיימת קדומה ומתקיים $\int \alpha f(x)\,dx = \alpha \int f(x)\,dx$.

    2. לפונקציה $f + g$ קיימת קדומה ומתקיים $\int (f(x) + g(x))\,dx = \int f(x)\,dx + \int g(x)\,dx$.

---

## 9.6 דוגמאות נוספות

!!! example "קדומה ל-$\cot x$ בקטע $(0,\pi)$"
    נגדיר $g(x) = \sin x$ על $(0,\pi)$, $f(u) = \frac{1}{u}$. אז $F(u) = \ln u$ קדומה של $f$, ו-$(f \circ g)(x) \cdot g'(x) = \frac{1}{\sin x} \cdot \cos x = \cot x$. לפי שינוי משתנה:
    $$\int \cot x\,dx = F(g(x)) + c = \ln(\sin x) + c$$

!!! example "קדומה ל-$\frac{1}{a^2+x^2}$ בכל קטע ($a > 0$)"
    נגדיר $g(t) = at$. אז $(f \circ g)(t) \cdot g'(t) = \frac{1}{a^2+a^2t^2} \cdot a = \frac{1}{a(1+t^2)}$. קדומה: $\frac{1}{a}\arctan t$. לכן
    $$\int \frac{1}{a^2+x^2}\,dx = \frac{1}{a}\arctan\frac{x}{a} + c$$

!!! example "קדומה ל-$\frac{1}{\sqrt{a^2-x^2}}$ בקטע $(-a,a)$ ($a > 0$)"
    באופן דומה:
    $$\int \frac{1}{\sqrt{a^2-x^2}}\,dx = \arcsin\frac{x}{a} + c$$

---

## תרגילים

!!! question "תרגיל 1"
    חשבו את האינטגרלים הבאים:

    - $\int x e^x\,dx$
    - $\int x^2 e^x\,dx$
    - $\int e^x \sin x\,dx$
    - $\int \arcsin x\,dx$

??? success "פתרון"
    **$\int x e^x\,dx$:** אינטגרציה בחלקים עם $F = e^x$, $g = x$:
    $$\int x e^x\,dx = x e^x - \int e^x\,dx = x e^x - e^x + c = e^x(x-1) + c$$

    **$\int x^2 e^x\,dx$:** אינטגרציה בחלקים פעמיים:
    $$\int x^2 e^x\,dx = x^2 e^x - 2\int x e^x\,dx = x^2 e^x - 2e^x(x-1) + c = e^x(x^2 - 2x + 2) + c$$

    **$\int e^x \sin x\,dx$:** נסמן $I = \int e^x \sin x\,dx$. אינטגרציה בחלקים פעמיים:
    $$I = e^x \sin x - \int e^x \cos x\,dx = e^x \sin x - e^x \cos x - I$$
    $$2I = e^x(\sin x - \cos x)$$
    $$I = \frac{e^x(\sin x - \cos x)}{2} + c$$

    **$\int \arcsin x\,dx$:** אינטגרציה בחלקים עם $F = x$, $g = \arcsin x$:
    $$\int \arcsin x\,dx = x \arcsin x - \int \frac{x}{\sqrt{1-x^2}}\,dx = x \arcsin x + \sqrt{1-x^2} + c$$

!!! question "תרגיל 2"
    מצאו קדומה ל-$\frac{1}{x^2-a^2}$ (עבור $a \neq 0$) בקטע מתאים.

??? success "פתרון"
    פירוק לשברים חלקיים: $\frac{1}{x^2-a^2} = \frac{1}{2a}\left(\frac{1}{x-a} - \frac{1}{x+a}\right)$.

    לכן:
    $$\int \frac{1}{x^2-a^2}\,dx = \frac{1}{2a}\left(\ln|x-a| - \ln|x+a|\right) + c = \frac{1}{2a}\ln\left|\frac{x-a}{x+a}\right| + c$$
