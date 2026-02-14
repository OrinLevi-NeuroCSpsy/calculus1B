# פרק 8: נגזרות חלקיות ודיפרנציאביליות

## 8.1 גבולות ורציפות בכמה משתנים

!!! info "הגדרה 8.1 (גבול)"
    תהי $f: D \to \mathbb{R}$ כאשר $D \subseteq \mathbb{R}^n$ ו-$\mathbf{a}$ נקודת צבירה של $D$.
    $$\lim_{\mathbf{x}\to\mathbf{a}} f(\mathbf{x}) = L \iff \forall\varepsilon>0\;\exists\delta>0: 0<\|\mathbf{x}-\mathbf{a}\|<\delta,\;\mathbf{x}\in D \implies |f(\mathbf{x})-L|<\varepsilon$$

!!! note "הערה"
    ב-$\mathbb{R}^n$ עם $n \ge 2$, אפשר להתקרב ל-$\mathbf{a}$ מכיוונים אינסופיים. אם הגבול קיים, הוא חייב להיות זהה בכל מסלול התקרבות. לכן, כדי **להפריך** קיום גבול — מספיק למצוא שני מסלולים שנותנים גבולות שונים.

!!! example "דוגמה"
    $f(x,y) = \frac{xy}{x^2+y^2}$ ב-$(0,0)$:

    - לאורך $y=0$: $f(x,0) = 0 \to 0$
    - לאורך $y=x$: $f(x,x) = \frac{x^2}{2x^2} = \frac{1}{2} \to \frac{1}{2}$

    גבולות שונים, לכן הגבול ב-$(0,0)$ לא קיים.

!!! info "הגדרה 8.2 (רציפות)"
    $f: D \to \mathbb{R}$ **רציפה** ב-$\mathbf{a} \in D$ אם $\lim_{\mathbf{x}\to\mathbf{a}} f(\mathbf{x}) = f(\mathbf{a})$.

## 8.2 נגזרות חלקיות

!!! info "הגדרה 8.3 (נגזרת חלקית)"
    **הנגזרת החלקית** של $f: \mathbb{R}^n \to \mathbb{R}$ לפי $x_i$ בנקודה $\mathbf{a}$:
    $$\frac{\partial f}{\partial x_i}(\mathbf{a}) = \lim_{h\to 0}\frac{f(\mathbf{a}+h\mathbf{e}_i)-f(\mathbf{a})}{h}$$

    כאשר $\mathbf{e}_i$ וקטור היחידה ה-$i$.

!!! note "הערה"
    הנגזרת החלקית מחשבת נגזרה רגילה של $f$ ביחס למשתנה אחד, כש**כל שאר המשתנים קבועים**.

!!! example "דוגמה"
    $f(x,y) = x^2y + \sin(xy)$:

    $$\frac{\partial f}{\partial x} = 2xy + y\cos(xy), \qquad \frac{\partial f}{\partial y} = x^2 + x\cos(xy)$$

!!! note "הערה חשובה"
    קיום נגזרות חלקיות **אינו** מבטיח רציפות! דוגמה:
    $$f(x,y) = \begin{cases} \frac{xy}{x^2+y^2}, & (x,y)\ne(0,0) \\ 0, & (x,y)=(0,0) \end{cases}$$

    $f_x(0,0) = f_y(0,0) = 0$, אבל $f$ אינה רציפה ב-$(0,0)$.

## 8.3 נגזרות כיווניות

!!! info "הגדרה 8.4 (נגזרת כיוונית)"
    **הנגזרת הכיוונית** של $f$ בנקודה $\mathbf{a}$ בכיוון $\mathbf{v}$ ($\|\mathbf{v}\|=1$):
    $$D_\mathbf{v}f(\mathbf{a}) = \lim_{t\to 0}\frac{f(\mathbf{a}+t\mathbf{v})-f(\mathbf{a})}{t}$$

!!! note "הערה"
    נגזרות חלקיות הן מקרה פרטי: $\frac{\partial f}{\partial x_i} = D_{\mathbf{e}_i}f$.

## 8.4 דיפרנציאביליות

!!! info "הגדרה 8.5 (דיפרנציאביליות)"
    $f: \mathbb{R}^n \to \mathbb{R}$ **דיפרנציאבילית** ב-$\mathbf{a}$ אם קיימת העתקה לינארית $L: \mathbb{R}^n \to \mathbb{R}$ כך ש:
    $$f(\mathbf{a}+\mathbf{h}) = f(\mathbf{a}) + L(\mathbf{h}) + o(\|\mathbf{h}\|)$$

    כלומר:
    $$\lim_{\mathbf{h}\to\mathbf{0}}\frac{f(\mathbf{a}+\mathbf{h})-f(\mathbf{a})-L(\mathbf{h})}{\|\mathbf{h}\|} = 0$$

    ההעתקה $L$ נקראת **הדיפרנציאל** של $f$ ב-$\mathbf{a}$ ומסומנת $df_\mathbf{a}$.

!!! success "משפט 8.6 (דיפרנציאביליות $\Rightarrow$ רציפות)"
    אם $f$ דיפרנציאבילית ב-$\mathbf{a}$ אז $f$ רציפה ב-$\mathbf{a}$.

!!! success "משפט 8.7 (דיפרנציאביליות $\Rightarrow$ קיום נגזרות חלקיות)"
    אם $f$ דיפרנציאבילית ב-$\mathbf{a}$, אז כל הנגזרות החלקיות קיימות ב-$\mathbf{a}$ ו:
    $$df_\mathbf{a}(\mathbf{h}) = \sum_{i=1}^n \frac{\partial f}{\partial x_i}(\mathbf{a}) h_i = \nabla f(\mathbf{a}) \cdot \mathbf{h}$$

## 8.5 הגרדיאנט ומטריצת הנגזרות

!!! info "הגדרה 8.8 (גרדיאנט)"
    **הגרדיאנט** של $f: \mathbb{R}^n \to \mathbb{R}$ בנקודה $\mathbf{a}$:
    $$\nabla f(\mathbf{a}) = \left(\frac{\partial f}{\partial x_1}(\mathbf{a}), \ldots, \frac{\partial f}{\partial x_n}(\mathbf{a})\right)$$

!!! success "טענה 8.9 (נגזרת כיוונית מהגרדיאנט)"
    אם $f$ דיפרנציאבילית ב-$\mathbf{a}$, אז לכל $\|\mathbf{v}\|=1$:
    $$D_\mathbf{v}f(\mathbf{a}) = \nabla f(\mathbf{a})\cdot\mathbf{v}$$

    בפרט, הכיוון שבו $f$ עולה הכי מהר הוא $\frac{\nabla f}{\|\nabla f\|}$ (כיוון הגרדיאנט).

!!! info "הגדרה 8.10 (מטריצת יעקובי)"
    עבור $\mathbf{f}: \mathbb{R}^n \to \mathbb{R}^m$ דיפרנציאבילית, **מטריצת יעקובי** (מטריצת הנגזרות החלקיות):
    $$J_\mathbf{f}(\mathbf{a}) = \begin{pmatrix} \frac{\partial f_1}{\partial x_1} & \cdots & \frac{\partial f_1}{\partial x_n} \\ \vdots & \ddots & \vdots \\ \frac{\partial f_m}{\partial x_1} & \cdots & \frac{\partial f_m}{\partial x_n} \end{pmatrix}_\mathbf{a}$$

    הדיפרנציאל הוא: $d\mathbf{f}_\mathbf{a}(\mathbf{h}) = J_\mathbf{f}(\mathbf{a})\cdot\mathbf{h}$.

## 8.6 תנאי מספיק לדיפרנציאביליות

!!! success "משפט 8.11 (תנאי מספיק)"
    אם הנגזרות החלקיות $\frac{\partial f}{\partial x_1}, \ldots, \frac{\partial f}{\partial x_n}$ **קיימות בסביבת** $\mathbf{a}$ ו**רציפות** ב-$\mathbf{a}$, אז $f$ דיפרנציאבילית ב-$\mathbf{a}$.

??? example "הוכחה (מקרה $n=2$)"
    נכתוב:
    $$f(a+h, b+k) - f(a,b) = [f(a+h, b+k)-f(a, b+k)] + [f(a, b+k)-f(a,b)]$$

    לפי משפט הערך הממוצע (משתנה אחד):
    $$= f_x(\xi, b+k)\cdot h + f_y(a, \eta)\cdot k$$

    לקבועים $\xi$ בין $a$ ו-$a+h$ ו-$\eta$ בין $b$ ו-$b+k$.

    $$= f_x(a,b)h + f_y(a,b)k + [f_x(\xi,b+k)-f_x(a,b)]h + [f_y(a,\eta)-f_y(a,b)]k$$

    מרציפות הנגזרות החלקיות, שני האיברים האחרונים הם $o(\|(h,k)\|)$. $\blacksquare$

!!! info "הגדרה 8.12 ($C^k$)"
    $f \in C^k$ אם כל הנגזרות החלקיות מסדר $\le k$ קיימות ורציפות.

## 8.7 נגזרות חלקיות מסדר גבוה ומשפט שוורץ

!!! success "משפט 8.13 (שוורץ — Schwarz / Clairaut)"
    אם $f_{xy}$ ו-$f_{yx}$ קיימות בסביבת $(a,b)$ ורציפות ב-$(a,b)$, אז:
    $$\frac{\partial^2 f}{\partial x \partial y}(a,b) = \frac{\partial^2 f}{\partial y \partial x}(a,b)$$

!!! note "הערה"
    באופן כללי, עבור $f \in C^k$ ניתן להחליף את סדר הגזירה של כל הנגזרות החלקיות מסדר $\le k$.

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו ש-$f(x,y) = \sqrt{|xy|}$ רציפה ב-$(0,0)$ אך אינה דיפרנציאבילית שם.

??? success "פתרון"
    **רציפות:** $0 \le \sqrt{|xy|} \le \sqrt{x^2+y^2}\cdot\frac{1}{\sqrt{2}}$ (כי $|xy| \le \frac{x^2+y^2}{2}$). לכן $f(x,y)\to 0 = f(0,0)$.

    **נגזרות חלקיות:** $f_x(0,0) = \lim_{h\to 0}\frac{\sqrt{|h\cdot 0|}}{h} = 0$. בדומה $f_y(0,0) = 0$.

    **לא דיפרנציאבילית:** אם $f$ דיפרנציאבילית, הדיפרנציאל $L(h,k) = 0$ (כי $\nabla f = \mathbf{0}$). אז נדרש:
    $$\frac{\sqrt{|hk|}}{\sqrt{h^2+k^2}} \to 0$$

    אבל לאורך $k = h$: $\frac{\sqrt{h^2}}{\sqrt{2}|h|} = \frac{1}{\sqrt{2}} \ne 0$. סתירה. $\blacksquare$

!!! question "תרגיל 2"
    חשבו את מטריצת יעקובי של $\mathbf{f}(r,\theta) = (r\cos\theta, r\sin\theta)$ (קואורדינטות קוטביות).

??? success "פתרון"
    $$J_\mathbf{f} = \begin{pmatrix} \frac{\partial(r\cos\theta)}{\partial r} & \frac{\partial(r\cos\theta)}{\partial\theta} \\ \frac{\partial(r\sin\theta)}{\partial r} & \frac{\partial(r\sin\theta)}{\partial\theta} \end{pmatrix} = \begin{pmatrix} \cos\theta & -r\sin\theta \\ \sin\theta & r\cos\theta \end{pmatrix}$$

    הדטרמיננטה: $\det J = r\cos^2\theta + r\sin^2\theta = r$. $\blacksquare$

!!! question "תרגיל 3"
    תנו דוגמה לפונקציה $f: \mathbb{R}^2 \to \mathbb{R}$ שכל הנגזרות הכיווניות קיימות ב-$(0,0)$ אך $f$ אינה רציפה שם.

??? success "פתרון"
    $$f(x,y) = \begin{cases} \frac{x^2 y}{x^4+y^2}, & (x,y)\ne(0,0) \\ 0, & (x,y)=(0,0) \end{cases}$$

    **נגזרות כיווניות:** לכל $\mathbf{v}=(a,b)$ עם $\|\mathbf{v}\|=1$:
    $$D_\mathbf{v}f(0,0) = \lim_{t\to 0}\frac{f(ta,tb)}{t} = \lim_{t\to 0}\frac{t^3 a^2 b}{t^4 a^4+t^2 b^2}$$

    אם $b \ne 0$: $= \lim_{t\to 0}\frac{t a^2 b}{t^2 a^4 + b^2} = 0$.
    אם $b = 0$: $f(ta,0) = 0$, אז $D_\mathbf{v}f = 0$.

    **לא רציפה:** לאורך $y=x^2$: $f(x,x^2) = \frac{x^4}{2x^4} = \frac{1}{2} \ne 0 = f(0,0)$. $\blacksquare$
