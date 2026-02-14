# פרק 10: קיצון מקומי, טיילור וכופלי לגרנז'

## 10.1 קיצון מקומי

!!! info "הגדרה 10.1 (נקודת קיצון מקומי)"
    $f: D \subseteq \mathbb{R}^n \to \mathbb{R}$. נקודה $\mathbf{a} \in D$ היא **נקודת מינימום מקומי** אם קיימת סביבה $U$ של $\mathbf{a}$ עם $f(\mathbf{x}) \ge f(\mathbf{a})$ לכל $\mathbf{x} \in U \cap D$. בדומה מוגדר **מקסימום מקומי**.

!!! success "משפט 10.2 (תנאי הכרחי לקיצון)"
    אם $f$ דיפרנציאבילית ב-$\mathbf{a}$ ול-$f$ קיצון מקומי ב-$\mathbf{a}$, אז:
    $$\nabla f(\mathbf{a}) = \mathbf{0}$$

    נקודה שבה $\nabla f = \mathbf{0}$ נקראת **נקודה קריטית** (סטציונרית).

??? example "הוכחה"
    לכל כיוון $\mathbf{v}$, הפונקציה $g(t) = f(\mathbf{a}+t\mathbf{v})$ מקבלת קיצון ב-$t=0$. לכן $g'(0) = D_\mathbf{v}f(\mathbf{a}) = \nabla f(\mathbf{a})\cdot\mathbf{v} = 0$ לכל $\mathbf{v}$. לכן $\nabla f(\mathbf{a}) = \mathbf{0}$. $\blacksquare$

## 10.2 מטריצת הסיאן ותנאי מספיק

!!! info "הגדרה 10.3 (מטריצת הסיאן — Hessian)"
    עבור $f \in C^2$, **מטריצת הסיאן** ב-$\mathbf{a}$ היא:
    $$H_f(\mathbf{a}) = \left(\frac{\partial^2 f}{\partial x_i \partial x_j}(\mathbf{a})\right)_{i,j=1}^n$$

    לפי משפט שוורץ, $H_f$ סימטרית.

!!! success "משפט 10.4 (תנאי מספיק לקיצון — שני משתנים)"
    תהי $f \in C^2(\mathbb{R}^2)$ ו-$\nabla f(a,b) = \mathbf{0}$. נסמן:
    $$D = f_{xx}f_{yy} - f_{xy}^2 = \det H_f$$

    אז:

    1. $D > 0$ ו-$f_{xx} > 0$ $\Rightarrow$ מינימום מקומי
    2. $D > 0$ ו-$f_{xx} < 0$ $\Rightarrow$ מקסימום מקומי
    3. $D < 0$ $\Rightarrow$ נקודת אוכף
    4. $D = 0$ $\Rightarrow$ המבחן אינו מכריע

!!! success "משפט 10.5 (תנאי מספיק — מקרה כללי)"
    תהי $f \in C^2(\mathbb{R}^n)$ ו-$\nabla f(\mathbf{a}) = \mathbf{0}$. אז:

    1. אם $H_f(\mathbf{a})$ **חיובית מוגדרת** (כל הע"ע חיוביים) $\Rightarrow$ מינימום מקומי
    2. אם $H_f(\mathbf{a})$ **שלילית מוגדרת** (כל הע"ע שליליים) $\Rightarrow$ מקסימום מקומי
    3. אם ל-$H_f(\mathbf{a})$ יש ע"ע חיוביים ושליליים $\Rightarrow$ נקודת אוכף

!!! note "הערה — קריטריון סילבסטר"
    מטריצה סימטרית $A$ חיובית מוגדרת $\iff$ כל **המינורים הראשיים** חיוביים:
    $$a_{11} > 0, \quad \det\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix} > 0, \quad \ldots, \quad \det A > 0$$

## 10.3 פולינום טיילור בכמה משתנים

!!! success "משפט 10.6 (טיילור מסדר שני)"
    תהי $f \in C^3$ בסביבת $\mathbf{a} \in \mathbb{R}^n$. אז:
    $$f(\mathbf{a}+\mathbf{h}) = f(\mathbf{a}) + \nabla f(\mathbf{a})\cdot\mathbf{h} + \frac{1}{2}\mathbf{h}^T H_f(\mathbf{a})\mathbf{h} + O(\|\mathbf{h}\|^3)$$

!!! example "דוגמה — שני משתנים"
    $$f(a+h, b+k) = f(a,b) + f_xh + f_yk + \frac{1}{2}(f_{xx}h^2 + 2f_{xy}hk + f_{yy}k^2) + \cdots$$

!!! success "משפט 10.7 (טיילור מסדר $k$ — נוסחה כללית)"
    תהי $f \in C^{k+1}$ בסביבת $\mathbf{a}$. אז:
    $$f(\mathbf{a}+\mathbf{h}) = \sum_{|\alpha| \le k}\frac{D^\alpha f(\mathbf{a})}{\alpha!}\mathbf{h}^\alpha + O(\|\mathbf{h}\|^{k+1})$$

    כאשר $\alpha = (\alpha_1,\ldots,\alpha_n)$ מולטי-אינדקס, $|\alpha| = \sum\alpha_i$, $\alpha! = \prod\alpha_i!$, $D^\alpha = \prod\partial_{x_i}^{\alpha_i}$, $\mathbf{h}^\alpha = \prod h_i^{\alpha_i}$.

## 10.4 כופלי לגרנז'

!!! success "משפט 10.8 (כופלי לגרנז' — Lagrange Multipliers)"
    תהי $f, g_1, \ldots, g_m: \mathbb{R}^n \to \mathbb{R}$ מחלקה $C^1$ ($m < n$). אם ל-$f$ יש קיצון מקומי ב-$\mathbf{a}$ בכפוף לאילוצים $g_1(\mathbf{x}) = \cdots = g_m(\mathbf{x}) = 0$, ואם הגרדיאנטים $\nabla g_1(\mathbf{a}), \ldots, \nabla g_m(\mathbf{a})$ **בלתי תלויים לינארית**, אז קיימים $\lambda_1, \ldots, \lambda_m \in \mathbb{R}$ כך ש:
    $$\nabla f(\mathbf{a}) = \lambda_1 \nabla g_1(\mathbf{a}) + \cdots + \lambda_m \nabla g_m(\mathbf{a})$$

    המספרים $\lambda_i$ נקראים **כופלי לגרנז'**.

??? example "הוכחה (מקרה $n=2$, $m=1$)"
    נתון: $g(\mathbf{a}) = 0$ ו-$\nabla g(\mathbf{a}) \ne \mathbf{0}$. לפי משפט הפונקציה הסתומה, העקום $g = 0$ ניתן לפרמטריזציה $\mathbf{r}(t)$ סביב $\mathbf{a} = \mathbf{r}(0)$.

    מקיצון: $\frac{d}{dt}f(\mathbf{r}(t))\big|_{t=0} = \nabla f(\mathbf{a})\cdot\dot{\mathbf{r}}(0) = 0$.

    מהאילוץ: $\frac{d}{dt}g(\mathbf{r}(t))\big|_{t=0} = \nabla g(\mathbf{a})\cdot\dot{\mathbf{r}}(0) = 0$.

    כלומר $\nabla f(\mathbf{a})$ ו-$\nabla g(\mathbf{a})$ שניהם מאונכים ל-$\dot{\mathbf{r}}(0)$. ב-$\mathbb{R}^2$ זה אומר שהם תלויים לינארית, כלומר $\nabla f = \lambda \nabla g$. $\blacksquare$

!!! note "הערה — שיטה מעשית"
    בפועל, פותרים את המערכת:
    $$\begin{cases} \nabla f = \lambda_1\nabla g_1 + \cdots + \lambda_m\nabla g_m \\ g_1(\mathbf{x}) = 0, \ldots, g_m(\mathbf{x}) = 0 \end{cases}$$

    זו מערכת של $n + m$ משוואות ב-$n + m$ נעלמים ($x_1,\ldots,x_n,\lambda_1,\ldots,\lambda_m$).

!!! example "דוגמה"
    מצאו קיצון של $f(x,y,z) = x+y+z$ בכפוף ל-$x^2+y^2+z^2 = 1$.

    $\nabla f = (1,1,1)$, $\nabla g = (2x,2y,2z)$. מ-$\nabla f = \lambda\nabla g$: $1 = 2\lambda x = 2\lambda y = 2\lambda z$. לכן $x = y = z$.

    מהאילוץ: $3x^2 = 1$, כלומר $x = \pm\frac{1}{\sqrt{3}}$. מקסימום $f = \sqrt{3}$, מינימום $f = -\sqrt{3}$.

---

## תרגילים

!!! question "תרגיל 1"
    מצאו ומיינו את הנקודות הקריטיות של $f(x,y) = x^3 + y^3 - 3xy$.

??? success "פתרון"
    $f_x = 3x^2 - 3y = 0$, $f_y = 3y^2 - 3x = 0$. מהראשונה $y = x^2$. הצבה בשנייה: $3x^4 - 3x = 0$, $x(x^3-1)=0$. נקודות קריטיות: $(0,0)$ ו-$(1,1)$.

    $f_{xx} = 6x$, $f_{yy} = 6y$, $f_{xy} = -3$. $D = 36xy - 9$.

    - $(0,0)$: $D = -9 < 0$ — נקודת אוכף.
    - $(1,1)$: $D = 36-9 = 27 > 0$ ו-$f_{xx} = 6 > 0$ — מינימום מקומי. $\blacksquare$

!!! question "תרגיל 2"
    מצאו את הנקודות הקרובות ביותר והרחוקות ביותר על האליפסה $x^2 + 4y^2 = 4$ מהראשית.

??? success "פתרון"
    נמזער/נמקסם $f(x,y) = x^2+y^2$ בכפוף ל-$g(x,y) = x^2+4y^2-4 = 0$.

    $\nabla f = \lambda\nabla g$: $(2x, 2y) = \lambda(2x, 8y)$.

    - מ-$2x = 2\lambda x$: $x = 0$ או $\lambda = 1$.
    - אם $\lambda = 1$: $2y = 8y$, לכן $y = 0$. מהאילוץ $x^2 = 4$, $x = \pm 2$. $f = 4$.
    - אם $x = 0$: $4y^2 = 4$, $y = \pm 1$. $2y = 8\lambda y$ אז $\lambda = 1/4$. $f = 1$.

    מינימום $f = 1$ ב-$(0,\pm 1)$. מקסימום $f = 4$ ב-$(\pm 2, 0)$. $\blacksquare$

!!! question "תרגיל 3"
    מצאו את פולינום טיילור מסדר 2 של $f(x,y) = e^x\sin y$ סביב $(0,0)$.

??? success "פתרון"
    $f(0,0) = 0$. $f_x = e^x\sin y$, $f_y = e^x\cos y$.

    $f_x(0,0) = 0$, $f_y(0,0) = 1$.

    $f_{xx} = e^x\sin y$, $f_{xy} = e^x\cos y$, $f_{yy} = -e^x\sin y$.

    $f_{xx}(0,0) = 0$, $f_{xy}(0,0) = 1$, $f_{yy}(0,0) = 0$.

    $$P_2(x,y) = 0 + 0\cdot x + 1\cdot y + \frac{1}{2}(0\cdot x^2 + 2\cdot 1\cdot xy + 0\cdot y^2) = y + xy$$

    $\blacksquare$
