# פרק 12: משפט פוביני, החלפת משתנים ואינטגרלים לא אמיתיים

## 12.1 משפט פוביני

!!! success "משפט 12.1 (פוביני — Fubini)"
    תהי $f: B = [a_1,b_1]\times[a_2,b_2] \to \mathbb{R}$ אינטגרבילית. אם לכל $x \in [a_1,b_1]$ האינטגרל $\int_{a_2}^{b_2} f(x,y)\,dy$ קיים, אז:
    $$\int_B f = \int_{a_1}^{b_1}\left(\int_{a_2}^{b_2} f(x,y)\,dy\right)dx$$

    בדומה אם לכל $y$ האינטגרל לפי $x$ קיים.

!!! note "הערה"
    אם $f$ **רציפה** על $B$, אז שני האינטגרלים האיטרטיביים קיימים ושווים:
    $$\int_{a_1}^{b_1}\int_{a_2}^{b_2} f(x,y)\,dy\,dx = \int_{a_2}^{b_2}\int_{a_1}^{b_1} f(x,y)\,dx\,dy = \int_B f$$

!!! success "משפט 12.2 (פוביני — תחומים כלליים)"
    תהי $\Omega \subseteq \mathbb{R}^2$ ג'ורדן-מדידה מהצורה:
    $$\Omega = \{(x,y) \mid a \le x \le b,\; \varphi_1(x) \le y \le \varphi_2(x)\}$$

    כאשר $\varphi_1, \varphi_2$ רציפות. אם $f$ אינטגרבילית על $\Omega$, אז:
    $$\int_\Omega f = \int_a^b\left(\int_{\varphi_1(x)}^{\varphi_2(x)} f(x,y)\,dy\right)dx$$

!!! example "דוגמה"
    חשבו $\int_\Omega xy\,dA$ כאשר $\Omega = \{(x,y) \mid 0 \le x \le 1,\; 0 \le y \le x^2\}$.

    $$\int_0^1\int_0^{x^2} xy\,dy\,dx = \int_0^1 x\cdot\frac{y^2}{2}\bigg|_0^{x^2}dx = \int_0^1 \frac{x^5}{2}\,dx = \frac{x^6}{12}\bigg|_0^1 = \frac{1}{12}$$

!!! note "הערה — היפוך סדר האינטגרציה"
    לעיתים שינוי סדר האינטגרציה מפשט את החישוב. יש לשרטט את התחום ולמצוא את גבולות האינטגרציה החדשים.

## 12.2 החלפת משתנים באינטגרלים כפולים

!!! success "משפט 12.3 (החלפת משתנים — Change of Variables)"
    תהי $\mathbf{T}: U \to V$ דיפאומורפיזם ($C^1$, חח"ע ועל, עם הופכית $C^1$) בין תחומים פתוחים ב-$\mathbb{R}^n$. תהי $f: V \to \mathbb{R}$ אינטגרבילית. אז:
    $$\int_V f(\mathbf{y})\,d\mathbf{y} = \int_U f(\mathbf{T}(\mathbf{x}))|\det J_\mathbf{T}(\mathbf{x})|\,d\mathbf{x}$$

    כאשר $J_\mathbf{T}$ מטריצת יעקובי של $\mathbf{T}$.

!!! example "דוגמה — קואורדינטות קוטביות"
    $T(r,\theta) = (r\cos\theta, r\sin\theta)$. $\det J_T = r$ (ראו פרק 8, תרגיל 2). לכן:
    $$\iint_\Omega f(x,y)\,dx\,dy = \int\!\!\int f(r\cos\theta, r\sin\theta)\cdot r\,dr\,d\theta$$

!!! example "דוגמה — חישוב שטח עיגול"
    $\Omega = \{x^2+y^2 \le R^2\}$, $f = 1$:
    $$\operatorname{Area}(\Omega) = \int_0^{2\pi}\int_0^R r\,dr\,d\theta = \int_0^{2\pi}\frac{R^2}{2}\,d\theta = \pi R^2$$

!!! example "דוגמה — קואורדינטות כדוריות"
    ב-$\mathbb{R}^3$: $T(r,\theta,\varphi) = (r\sin\varphi\cos\theta, r\sin\varphi\sin\theta, r\cos\varphi)$. $|\det J_T| = r^2\sin\varphi$. לכן:
    $$\iiint_\Omega f\,dx\,dy\,dz = \int\!\!\int\!\!\int f(r,\theta,\varphi)\cdot r^2\sin\varphi\,dr\,d\theta\,d\varphi$$

## 12.3 אינטגרלים לא אמיתיים בכמה משתנים

!!! info "הגדרה 12.4 (אינטגרל לא אמיתי)"
    תהי $\Omega \subseteq \mathbb{R}^n$ לא בהכרח חסומה, ו-$f: \Omega \to \mathbb{R}$. נאמר ש-$f$ **אינטגרבילית במובן הלא אמיתי** על $\Omega$ אם עבור כל סדרה עולה $\Omega_1 \subseteq \Omega_2 \subseteq \cdots$ של תחומים ג'ורדן-מדידים חסומים עם $\bigcup_k \Omega_k = \Omega$:
    $$\lim_{k\to\infty}\int_{\Omega_k} f$$

    קיים ואינו תלוי בבחירת הסדרה.

!!! success "משפט 12.5 (קריטריון ההשוואה)"
    אם $|f(\mathbf{x})| \le g(\mathbf{x})$ לכל $\mathbf{x} \in \Omega$ ו-$g$ אינטגרבילית על $\Omega$ (במובן הלא אמיתי), אז $f$ אינטגרבילית על $\Omega$.

!!! success "משפט 12.6 (אינטגרל גאוסי)"
    $$\int_{-\infty}^{\infty} e^{-x^2}\,dx = \sqrt{\pi}$$

??? example "הוכחה"
    נסמן $I = \int_{-\infty}^{\infty} e^{-x^2}\,dx$. אז:
    $$I^2 = \int_{-\infty}^{\infty}\int_{-\infty}^{\infty} e^{-(x^2+y^2)}\,dx\,dy$$

    נעבור לקואורדינטות קוטביות:
    $$I^2 = \int_0^{2\pi}\int_0^{\infty} e^{-r^2}\cdot r\,dr\,d\theta = 2\pi\int_0^{\infty}re^{-r^2}\,dr = 2\pi\cdot\frac{1}{2} = \pi$$

    לכן $I = \sqrt{\pi}$ (כי $I > 0$). $\blacksquare$

---

## תרגילים

!!! question "תרגיל 1"
    חשבו $\int_0^1\int_y^1 e^{x^2}\,dx\,dy$ על ידי היפוך סדר האינטגרציה.

??? success "פתרון"
    התחום: $0 \le y \le 1$, $y \le x \le 1$. היפוך: $0 \le x \le 1$, $0 \le y \le x$.

    $$\int_0^1\int_0^x e^{x^2}\,dy\,dx = \int_0^1 xe^{x^2}\,dx = \frac{1}{2}e^{x^2}\bigg|_0^1 = \frac{e-1}{2}$$

    $\blacksquare$

!!! question "תרגיל 2"
    חשבו את הנפח של הכדור $B_R = \{(x,y,z) \mid x^2+y^2+z^2 \le R^2\}$.

??? success "פתרון"
    בקואורדינטות כדוריות: $0 \le r \le R$, $0 \le \theta \le 2\pi$, $0 \le \varphi \le \pi$.

    $$V = \int_0^{2\pi}\int_0^{\pi}\int_0^R r^2\sin\varphi\,dr\,d\varphi\,d\theta = \int_0^{2\pi}d\theta\cdot\int_0^{\pi}\sin\varphi\,d\varphi\cdot\int_0^R r^2\,dr$$

    $$= 2\pi \cdot 2 \cdot \frac{R^3}{3} = \frac{4\pi R^3}{3}$$

    $\blacksquare$

!!! question "תרגיל 3"
    חשבו $\iint_\Omega \frac{1}{(x^2+y^2)^p}\,dA$ כאשר $\Omega = \{(x,y) \mid x^2+y^2 \le 1\}$ ו-$p > 0$. מצאו עבור אילו ערכי $p$ האינטגרל מתכנס.

??? success "פתרון"
    בקואורדינטות קוטביות: $x^2+y^2 = r^2$, $dA = r\,dr\,d\theta$.

    $$\iint_\Omega \frac{1}{(x^2+y^2)^p}\,dA = \int_0^{2\pi}\int_0^1 \frac{r}{r^{2p}}\,dr\,d\theta = 2\pi\int_0^1 r^{1-2p}\,dr$$

    - אם $1-2p > -1$ (כלומר $p < 1$): $\int_0^1 r^{1-2p}\,dr = \frac{r^{2-2p}}{2-2p}\bigg|_0^1 = \frac{1}{2-2p}$. מתכנס.
    - אם $p = 1$: $\int_0^1 \frac{1}{r}\,dr = \ln r\big|_0^1 = \infty$. מתבדר.
    - אם $p > 1$: $1-2p < -1$, האינטגרל מתבדר.

    **מסקנה:** מתכנס $\iff$ $p < 1$. $\blacksquare$
