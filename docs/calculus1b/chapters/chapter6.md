# פרק 6: גבולות של פונקציות

## 6.1 הגדרת גבול

!!! info "הגדרה 6.1 (הגדרת $\varepsilon$-$\delta$)"
    $\lim_{x \to x_0} f(x) = L$ אם:
    $$\forall \varepsilon > 0 \; \exists \delta > 0 \; \forall x : 0 < |x - x_0| < \delta \Rightarrow |f(x) - L| < \varepsilon$$

!!! info "הגדרה 6.2 (הגדרת היינה)"
    $\lim_{x \to x_0} f(x) = L$ אם לכל סדרה $x_n \to x_0$ עם $x_n \neq x_0$ מתקיים $f(x_n) \to L$.

!!! success "משפט 6.3"
    הגדרת $\varepsilon$-$\delta$ והגדרת היינה **שקולות**.

!!! example "דוגמה"
    הוכחה: $\lim_{x \to 2} (3x - 1) = 5$

    יהי $\varepsilon > 0$. נבחר $\delta = \frac{\varepsilon}{3}$.

    אם $0 < |x - 2| < \delta$ אז $|(3x-1) - 5| = 3|x - 2| < 3\delta = \varepsilon$ $\blacksquare$

## 6.2 אריתמטיקה של גבולות

!!! success "משפט 6.4"
    אם $\lim_{x \to x_0} f(x) = L$ ו-$\lim_{x \to x_0} g(x) = M$ אז:

    1. $\lim_{x \to x_0} (f + g)(x) = L + M$
    2. $\lim_{x \to x_0} (f \cdot g)(x) = L \cdot M$
    3. $\lim_{x \to x_0} \frac{f(x)}{g(x)} = \frac{L}{M}$ (אם $M \neq 0$)

!!! success "משפט 6.5 (סנדוויץ')"
    אם $f(x) \le g(x) \le h(x)$ ו-$\lim f = \lim h = L$ אז $\lim g = L$.

## 6.3 גבולות חד-צדדיים

!!! info "הגדרה 6.6"
    - **גבול מימין:** $\lim_{x \to x_0^+} f(x) = L$
    - **גבול משמאל:** $\lim_{x \to x_0^-} f(x) = L$

!!! success "משפט 6.7"
    $\lim_{x \to x_0} f(x) = L$ $\iff$ $\lim_{x \to x_0^+} f(x) = \lim_{x \to x_0^-} f(x) = L$

## 6.4 גבולות באינסוף

!!! info "הגדרה 6.8"
    $\lim_{x \to \infty} f(x) = L$ אם $\forall \varepsilon > 0 \; \exists M : x > M \Rightarrow |f(x) - L| < \varepsilon$

!!! info "הגדרה 6.9"
    $\lim_{x \to x_0} f(x) = \infty$ אם $\forall K > 0 \; \exists \delta > 0 : 0 < |x - x_0| < \delta \Rightarrow f(x) > K$

## 6.5 גבולות חשובים

!!! success "משפט 6.10"
    1. $\lim_{x \to 0} \frac{\sin x}{x} = 1$
    2. $\lim_{x \to 0} \frac{1 - \cos x}{x^2} = \frac{1}{2}$
    3. $\lim_{x \to 0} \frac{e^x - 1}{x} = 1$
    4. $\lim_{x \to 0} \frac{\ln(1+x)}{x} = 1$
    5. $\lim_{x \to 0} \frac{(1+x)^a - 1}{x} = a$
    6. $\lim_{x \to \infty} \left(1 + \frac{1}{x}\right)^x = e$

---

## תרגילים

!!! question "תרגיל 1"
    חשבו $\lim_{x \to 0} \frac{\tan x - \sin x}{x^3}$.

??? success "פתרון"
    $$\frac{\tan x - \sin x}{x^3} = \frac{\sin x(\frac{1}{\cos x} - 1)}{x^3} = \frac{\sin x}{x} \cdot \frac{1 - \cos x}{x^2 \cos x}$$

    כש-$x \to 0$:
    - $\frac{\sin x}{x} \to 1$
    - $\frac{1 - \cos x}{x^2} \to \frac{1}{2}$
    - $\cos x \to 1$

    לכן הגבול הוא $1 \cdot \frac{1/2}{1} = \boxed{\frac{1}{2}}$ $\blacksquare$

!!! question "תרגיל 2"
    חשבו $\lim_{x \to \infty} \left(\frac{x+1}{x-1}\right)^x$.

??? success "פתרון"
    $$\left(\frac{x+1}{x-1}\right)^x = \left(1 + \frac{2}{x-1}\right)^x$$

    נכתוב:
    $$= \left[\left(1 + \frac{2}{x-1}\right)^{(x-1)/2}\right]^{2x/(x-1)}$$

    כש-$x \to \infty$:
    - $\left(1 + \frac{2}{x-1}\right)^{(x-1)/2} \to e$
    - $\frac{2x}{x-1} \to 2$

    לכן הגבול הוא $\boxed{e^2}$ $\blacksquare$
