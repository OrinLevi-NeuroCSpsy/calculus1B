# פרק 9: כלל השרשרת והפונקציה הסתומה

## 9.1 כלל השרשרת

!!! success "משפט 9.1 (כלל השרשרת — Chain Rule)"
    תהי $\mathbf{g}: \mathbb{R}^n \to \mathbb{R}^m$ דיפרנציאבילית ב-$\mathbf{a}$, ותהי $\mathbf{f}: \mathbb{R}^m \to \mathbb{R}^k$ דיפרנציאבילית ב-$\mathbf{g}(\mathbf{a})$. אז $\mathbf{f}\circ\mathbf{g}$ דיפרנציאבילית ב-$\mathbf{a}$ ו:
    $$J_{\mathbf{f}\circ\mathbf{g}}(\mathbf{a}) = J_\mathbf{f}(\mathbf{g}(\mathbf{a}))\cdot J_\mathbf{g}(\mathbf{a})$$

!!! example "דוגמה — מסלול"
    $f: \mathbb{R}^2 \to \mathbb{R}$, $\mathbf{r}(t) = (x(t), y(t))$:
    $$\frac{d}{dt}f(\mathbf{r}(t)) = f_x\dot{x} + f_y\dot{y} = \nabla f \cdot \dot{\mathbf{r}}$$

!!! example "דוגמה — קואורדינטות קוטביות"
    $x = r\cos\theta$, $y = r\sin\theta$:
    $$\frac{\partial f}{\partial r} = f_x\cos\theta + f_y\sin\theta, \qquad \frac{\partial f}{\partial\theta} = -f_x r\sin\theta + f_y r\cos\theta$$

## 9.2 משפט הפונקציה הסתומה

!!! success "משפט 9.2 (הפונקציה הסתומה — Implicit Function Theorem)"
    תהי $F: \mathbb{R}^{n+m} \to \mathbb{R}^m$ מחלקה $C^1$, ו-$(a,b) \in \mathbb{R}^n \times \mathbb{R}^m$ עם $F(a,b) = 0$.

    אם $\frac{\partial F}{\partial y}(a,b)$ (מטריצה $m\times m$) **הפיכה**, אז:

    1. קיימות סביבות $U \ni a$, $V \ni b$ ופונקציה $\varphi: U \to V$ מחלקה $C^1$ עם $F(x, \varphi(x)) = 0$ לכל $x \in U$.
    2. $\varphi$ יחידה ב-$U \times V$.
    3. $J_\varphi(x) = -\left(\frac{\partial F}{\partial y}\right)^{-1}\frac{\partial F}{\partial x}$.

!!! example "דוגמה"
    $F(x,y) = x^2+y^2-1$. $F_y = 2y \ne 0$ כש-$y\ne 0$. מקומית $y = \varphi(x)$ עם $\varphi'(x) = -\frac{x}{y}$.

## 9.3 משפט הפונקציה ההפוכה

!!! success "משפט 9.3 (הפונקציה ההפוכה — Inverse Function Theorem)"
    תהי $\mathbf{f}: \mathbb{R}^n \to \mathbb{R}^n$ מחלקה $C^1$ ו-$\det J_\mathbf{f}(\mathbf{a}) \ne 0$. אז:

    1. $\mathbf{f}$ **חח"ע ועל** מקומית: קיימות סביבות $U \ni \mathbf{a}$, $V \ni \mathbf{f}(\mathbf{a})$ עם $\mathbf{f}: U \xrightarrow{\sim} V$.
    2. $\mathbf{f}^{-1}: V \to U$ מחלקה $C^1$.
    3. $J_{\mathbf{f}^{-1}}(\mathbf{f}(\mathbf{a})) = (J_\mathbf{f}(\mathbf{a}))^{-1}$.

!!! note "הערה"
    משפט הפונקציה ההפוכה שקול למשפט הפונקציה הסתומה. ניתן לעבור ביניהם ע"י $F(\mathbf{x},\mathbf{y}) = \mathbf{f}(\mathbf{x})-\mathbf{y}$.

---

## תרגילים

!!! question "תרגיל 1"
    $f(x,y) = e^{xy}$. חשבו $f_{xx}$, $f_{xy}$, $f_{yx}$ ווודאו $f_{xy}=f_{yx}$.

??? success "פתרון"
    $f_x = ye^{xy}$, $f_y = xe^{xy}$.

    $f_{xx} = y^2e^{xy}$, $f_{xy} = e^{xy}+xye^{xy} = (1+xy)e^{xy}$, $f_{yx} = e^{xy}+xye^{xy} = (1+xy)e^{xy}$.

    אכן $f_{xy}=f_{yx}$ (כצפוי, $f \in C^\infty$). $\blacksquare$

!!! question "תרגיל 2"
    $x^3+y^3+z^3-3xyz=1$ מגדירה $z=\varphi(x,y)$ סביב $(0,0,1)$. מצאו $\varphi_x(0,0)$ ו-$\varphi_y(0,0)$.

??? success "פתרון"
    $F = x^3+y^3+z^3-3xyz-1$. $F(0,0,1)=0$. $F_z = 3z^2-3xy$, $F_z(0,0,1)=3\ne 0$. $\checkmark$

    $$\varphi_x = -\frac{F_x}{F_z} = -\frac{3x^2-3yz}{3z^2-3xy}\bigg|_{(0,0,1)} = 0, \quad \varphi_y = -\frac{F_y}{F_z} = -\frac{3y^2-3xz}{3z^2-3xy}\bigg|_{(0,0,1)} = 0$$
    $\blacksquare$

!!! question "תרגיל 3"
    הוכיחו (משפט אוילר): אם $f \in C^1(\mathbb{R}^2)$ הומוגנית מדרגה $k$ ($f(tx,ty)=t^kf(x,y)$ לכל $t>0$), אז $xf_x + yf_y = kf$.

??? success "פתרון"
    נגזור $f(tx,ty)=t^kf(x,y)$ לפי $t$: $xf_x(tx,ty)+yf_y(tx,ty) = kt^{k-1}f(x,y)$.

    הצבת $t=1$: $xf_x(x,y)+yf_y(x,y) = kf(x,y)$. $\blacksquare$
