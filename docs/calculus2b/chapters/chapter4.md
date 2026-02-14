# פרק 4: טור פורייה מרוכב ונוסחת פרסבל

## 4.1 מבוא — אינטגרציה של פונקציות מרוכבות

!!! info "הגדרה 4.1 (אינטגרביליות מרוכבת)"
    תהי $f : [a,b] \to \mathbb{C}$, ונכתוב $f = u + iv$ כאשר $u, v$ הם החלק הממשי והמדומה.
    נאמר ש-$f$ **אינטגרבילית רימן** על $[a,b]$, ונכתוב $f \in R_\mathbb{C}[a,b]$, אם $u, v \in R[a,b]$.
    במקרה זה נגדיר:
    $$\int_a^b f = \int_a^b u + i\int_a^b v$$

!!! note "הערה"
    כל התכונות הרגילות של האינטגרל (לינאריות, אדיטיביות, המשפט היסודי) עוברות לפונקציות מרוכבות.

!!! success "טענה 4.2 (אי-שוויון המשולש האינטגרלי)"
    אם $f \in R_\mathbb{C}[a,b]$ אז $|f| \in R[a,b]$ ומתקיים:
    $$\left|\int_a^b f\right| \le \int_a^b |f|$$

??? example "הוכחה"
    אינטגרביליות $|f|$ נובעת מ-$\omega(|f|; \Delta) \le \omega(\operatorname{Re}f; \Delta) + \omega(\operatorname{Im}f; \Delta)$.

    לאי-השוויון: אם $\int_a^b f = 0$ אין מה להוכיח. אחרת, נבחר $\lambda \in \mathbb{C}$ עם $|\lambda|=1$ כך ש-$\lambda\int_a^b f > 0$. אז:
    $$\left|\int_a^b f\right| = \lambda\int_a^b f = \operatorname{Re}\int_a^b \lambda f = \int_a^b \operatorname{Re}(\lambda f) \le \int_a^b |\lambda f| = \int_a^b |f|$$
    $\blacksquare$

## 4.2 פונקציות מחזוריות ומרחב $C(\mathbb{R}/\mathbb{Z})$

!!! info "הגדרה 4.3 (הפונקציה האקספוננציאלית)"
    נסמן:
    $$e(t) = e^{2\pi i t} = \cos 2\pi t + i\sin 2\pi t, \qquad e_n(t) = e(nt) = e^{2\pi i n t}, \quad n \in \mathbb{Z}$$

!!! note "הערה — תכונות בסיסיות"
    - $e(t_1 + t_2) = e(t_1)\cdot e(t_2)$
    - $e_n \cdot e_m = e_{n+m}$
    - לכל $n \ne 0$: $e_n = \frac{e_n'}{2\pi i n}$
    - **אורתוגונליות:** $\displaystyle\int_0^1 e_n(t)\,dt = \begin{cases} 1, & n=0 \\ 0, & n \ne 0 \end{cases}$

!!! info "הגדרה 4.4 (מרחב $C(\mathbb{R}/\mathbb{Z})$)"
    $C(\mathbb{R}/\mathbb{Z})$ הוא המרחב הלינארי של הפונקציות הרציפות $f:\mathbb{R}\to\mathbb{C}$ שהן 1-מחזוריות: $f(t+1)=f(t)$ לכל $t$.

    באופן דומה $R(\mathbb{R}/\mathbb{Z})$ הוא מרחב הפונקציות 1-מחזוריות האינטגרביליות.

!!! info "הגדרה 4.5 (מכפלה פנימית ונורמת $L^2$)"
    עבור $f, g \in R(\mathbb{R}/\mathbb{Z})$:
    $$\langle f, g\rangle = \int_0^1 f(t)\overline{g(t)}\,dt, \qquad \|f\| = \sqrt{\langle f,f\rangle} = \sqrt{\int_0^1 |f(t)|^2\,dt}$$

!!! success "משפט 4.6 (אי-שוויון קושי-שוורץ)"
    לכל $f,g \in R(\mathbb{R}/\mathbb{Z})$:
    $$|\langle f,g\rangle| \le \|f\|\cdot\|g\|$$
    שוויון (עבור רציפות) אם ורק אם $f,g$ תלויות לינארית.

??? example "הוכחה"
    לכל $\lambda \in \mathbb{C}$: $0 \le \|f-\lambda g\|^2 = \|f\|^2 - 2\operatorname{Re}(\lambda\langle f,g\rangle) + |\lambda|^2\|g\|^2$.

    אם $\|g\|\ne 0$, נציב $\lambda = \frac{\langle f,g\rangle}{\|g\|^2}$ ונקבל $0 \le \|f\|^2 - \frac{|\langle f,g\rangle|^2}{\|g\|^2}$. $\blacksquare$

## 4.3 פולינומים טריגונומטריים — "Baby Fourier Theory"

!!! info "הגדרה 4.7 (פולינום טריגונומטרי)"
    **פולינום טריגונומטרי** הוא סכום סופי $\sum_k c_k e_k(t)$, $c_k \in \mathbb{C}$.
    **פולינום מדרגה $n$** הוא סכום $\sum_{|k|\le n} c_k e_k(t)$.

!!! success "טענה 4.8 (חישוב מקדמים)"
    אם $f = \sum_k c_k e_k$ פולינום טריגונומטרי, אז $c_n = \langle f, e_n\rangle$, ומתקיימות:
    $$\langle f,g\rangle = \sum_k \hat{f}(k)\overline{\hat{g}(k)}, \qquad \|f\|^2 = \sum_k |\hat{f}(k)|^2$$

## 4.4 מקדמי פורייה וטור פורייה

!!! info "הגדרה 4.9 (מקדמי פורייה)"
    עבור $f \in R(\mathbb{R}/\mathbb{Z})$, **מקדם פורייה ה-$k$** של $f$:
    $$\hat{f}(k) = \langle f, e_k\rangle = \int_{-1/2}^{1/2} f(t)e^{-2\pi ikt}\,dt, \quad k \in \mathbb{Z}$$

!!! info "הגדרה 4.10 (טור פורייה וסכומים חלקיים)"
    **טור פורייה** של $f$: $\displaystyle f \sim \sum_{k\in\mathbb{Z}} \hat{f}(k)e_k$

    **הסכום החלקי** מסדר $N$: $\displaystyle S_Nf(t) = \sum_{|k|\le N}\hat{f}(k)e_k(t)$

!!! note "הערה — סוגי התכנסות"
    נבדיל בין שלושה סוגי התכנסות של $S_Nf$ ל-$f$:

    1. **התכנסות $L^2$:** $\|f - S_Nf\| \to 0$
    2. **התכנסות נקודתית:** $S_Nf(t) \to f(t)$ לכל (או חלק) מנקודות $t$
    3. **התכנסות במידה שווה:** $\sup_\mathbb{R}|f - S_Nf| \to 0$

## 4.5 תכונות מקדמי פורייה

!!! success "טענה 4.11 (הזזה)"
    אם $f_a(t) = f(t+a)$, אז $\widehat{f_a}(k) = e^{2\pi ika}\hat{f}(k)$.

!!! success "טענה 4.12 (גזירה)"
    אם $f \in C^1(\mathbb{R}/\mathbb{Z})$, אז $\widehat{f'}(k) = 2\pi ik\cdot\hat{f}(k)$.

??? example "הוכחה"
    באינטגרציה בחלקים:
    $$\widehat{f'}(k) = \int_{-1/2}^{1/2}f'(t)e^{-2\pi ikt}\,dt = \left[f(t)e^{-2\pi ikt}\right]_{-1/2}^{1/2} + 2\pi ik\int_{-1/2}^{1/2}f(t)e^{-2\pi ikt}\,dt$$
    האיבר הראשון מתאפס (מחזוריות), ונשאר $2\pi ik\hat{f}(k)$. $\blacksquare$

!!! success "טענה 4.13 (פונקציות ממשיות)"
    אם $f$ ממשית, אז $\hat{f}(-k) = \overline{\hat{f}(k)}$, וטור פורייה ניתן לצורה טריגונומטרית:
    $$f(t) \sim \frac{a_0}{2} + \sum_{k=1}^\infty\left(a_k\cos 2\pi kt + b_k\sin 2\pi kt\right)$$
    כאשר $a_k = 2\operatorname{Re}\hat{f}(k)$, $b_k = -2\operatorname{Im}\hat{f}(k)$.

## 4.6 אי-שוויון בסל

!!! success "משפט 4.14 (אי-שוויון בסל — Bessel)"
    לכל $f \in R(\mathbb{R}/\mathbb{Z})$:
    $$\sum_{k=-\infty}^{\infty}|\hat{f}(k)|^2 \le \|f\|^2$$

??? example "הוכחה"
    נחשב:
    $$\|f - S_Nf\|^2 = \|f\|^2 - 2\operatorname{Re}\langle f, S_Nf\rangle + \|S_Nf\|^2$$

    כעת $\langle f, S_Nf\rangle = \sum_{|k|\le N}|\hat{f}(k)|^2$ וכן $\|S_Nf\|^2 = \sum_{|k|\le N}|\hat{f}(k)|^2$. לכן:
    $$\|f - S_Nf\|^2 = \|f\|^2 - \sum_{|k|\le N}|\hat{f}(k)|^2 \ge 0$$

    ומכאן $\sum_{|k|\le N}|\hat{f}(k)|^2 \le \|f\|^2$ לכל $N$, ובגבול $N\to\infty$ מקבלים את אי-שוויון בסל. $\blacksquare$

!!! note "הערה"
    ההוכחה מראה ש-$S_Nf$ הוא **ההיטל האורתוגונלי** של $f$ על מרחב הפולינומים הטריגונומטריים מדרגה $\le N$: הקירוב הטוב ביותר ב-$L^2$.

## 4.7 נוסחת פרסבל

!!! success "משפט 4.15 (פרסבל — Parseval)"
    לכל $f \in R(\mathbb{R}/\mathbb{Z})$:
    $$\sum_{k=-\infty}^{\infty}|\hat{f}(k)|^2 = \|f\|^2$$
    כלומר $\|f - S_Nf\| \to 0$ ($L^2$-התכנסות).

!!! note "הערה"
    נוסחת פרסבל שקולה למשפט הקירוב של ויירשטראס: לכל $f \in C(\mathbb{R}/\mathbb{Z})$ ו-$\varepsilon>0$, קיים פולינום טריגונומטרי $p$ כך ש-$\|f-p\| < \varepsilon$.

??? example "הוכחה (רעיון)"
    **ויירשטראס $\Rightarrow$ פרסבל:** לכל $\varepsilon>0$ קיים פולינום טריגונומטרי $p$ מדרגה $M$ עם $\|f-p\|<\varepsilon$. כיוון ש-$S_Nf$ הקירוב הטוב ביותר בדרגה $N$:
    $$\|f - S_Nf\| \le \|f - p\| < \varepsilon, \quad N \ge M$$

    **פרסבל $\Rightarrow$ ויירשטראס:** $S_Nf$ פולינומים טריגונומטריים עם $\|f - S_Nf\|\to 0$. $\blacksquare$

## 4.8 דוגמאות

!!! example "דוגמה 1 — $f(t) = t^2$ על $[-\frac{1}{2}, \frac{1}{2}]$"
    $\hat{f}(0) = \int_{-1/2}^{1/2}t^2\,dt = \frac{1}{12}$.

    עבור $k\ne 0$, באינטגרציה בחלקים פעמיים: $\hat{f}(k) = \frac{(-1)^k}{2\pi^2k^2}$.

    טור פורייה: $t^2 \sim \frac{1}{12} + \sum_{k=1}^\infty \frac{(-1)^k}{\pi^2k^2}\cos 2\pi kt$.

    מנוסחת פרסבל: $\sum_{k=1}^\infty \frac{1}{k^4} = \frac{\pi^4}{90}$.

!!! example "דוגמה 2 — $f(t) = |t|$ על $[-\frac{1}{2}, \frac{1}{2}]$"
    $\hat{f}(0) = \frac{1}{4}$. עבור $k\ne 0$: $\hat{f}(k) = \frac{(-1)^k - 1}{2\pi^2k^2}$ (שונה מאפס רק ל-$k$ אי-זוגי).

    הצבת $t=0$: $\sum_{n=0}^\infty\frac{1}{(2n+1)^2} = \frac{\pi^2}{8}$.

!!! example "דוגמה 3 — $f(t) = \frac{1}{2}-\{t\}$ (שן-מסור)"
    $\hat{f}(0)=0$, ולכל $k\ne 0$: $\hat{f}(k) = \frac{1}{2\pi ik}$.

    מנוסחת פרסבל: $\sum_{k=1}^\infty\frac{1}{k^2} = \frac{\pi^2}{6}$ (בעיית באזל).

---

## תרגילים

!!! question "תרגיל 1"
    חשבו את מקדמי פורייה של $f(t)=e^{2\pi\alpha t}$ על $[0,1]$ ($\alpha \in \mathbb{R}\setminus\mathbb{Z}$). השתמשו בפרסבל להוכיח:
    $$\sum_{k=-\infty}^{\infty}\frac{1}{(\alpha-k)^2} = \frac{\pi^2}{\sin^2(\pi\alpha)}$$

??? success "פתרון"
    $$\hat{f}(k) = \int_0^1 e^{2\pi i(\alpha-k)t}\,dt = \frac{e^{2\pi i(\alpha-k)}-1}{2\pi i(\alpha-k)} \implies |\hat{f}(k)|^2 = \frac{\sin^2(\pi\alpha)}{\pi^2(\alpha-k)^2}$$

    ו-$\|f\|^2 = 1$. לפי פרסבל: $\sum_k\frac{\sin^2(\pi\alpha)}{\pi^2(\alpha-k)^2}=1$. $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו: אם $f \in C^1(\mathbb{R}/\mathbb{Z})$ אז טור פורייה שלה מתכנס בהחלט ובמידה שווה.

??? success "פתרון"
    מגזירה: $|\hat{f}(k)| = \frac{|\widehat{f'}(k)|}{2\pi|k|}$ לכל $k\ne 0$. לפי קושי-שוורץ:
    $$\sum_{k\ne 0}|\hat{f}(k)| \le \left(\sum_{k\ne 0}|\widehat{f'}(k)|^2\right)^{1/2}\left(\sum_{k\ne 0}\frac{1}{4\pi^2k^2}\right)^{1/2} < \infty$$
    התכנסות בהחלט גוררת התכנסות במ"ש (כי $|e_k(t)|=1$). $\blacksquare$

!!! question "תרגיל 3"
    הוכיחו את **זהות פרסבל הכללית**: לכל $f,g \in R(\mathbb{R}/\mathbb{Z})$:
    $$\langle f,g\rangle = \sum_{k\in\mathbb{Z}}\hat{f}(k)\overline{\hat{g}(k)}$$

??? success "פתרון"
    נשתמש בזהות הקיטוב (polarization identity):
    $$\langle f,g\rangle = \frac{1}{4}\left(\|f+g\|^2 - \|f-g\|^2 + i\|f+ig\|^2 - i\|f-ig\|^2\right)$$

    לפי נוסחת פרסבל (עבור הנורמות):
    $$\|f+g\|^2 = \sum_k|\hat{f}(k)+\hat{g}(k)|^2, \quad \|f-g\|^2 = \sum_k|\hat{f}(k)-\hat{g}(k)|^2$$

    וכן הלאה. הצבה ופישוט נותנים $\langle f,g\rangle = \sum_k\hat{f}(k)\overline{\hat{g}(k)}$. $\blacksquare$
