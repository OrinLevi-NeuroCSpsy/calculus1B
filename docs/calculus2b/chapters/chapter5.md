# פרק 5: התכנסות טור פורייה ושימושים

## 5.1 גרעין דיריכלה

!!! info "הגדרה 5.1 (גרעין דיריכלה)"
    **גרעין דיריכלה** מסדר $N$ הוא:
    $$D_N(t) = \sum_{k=-N}^{N} e^{2\pi ikt} = \sum_{k=-N}^{N} e_k(t)$$

    ניתן להציג בצורה סגורה: לכל $t \notin \mathbb{Z}$:
    $$D_N(t) = \frac{\sin\bigl(\pi(2N+1)t\bigr)}{\sin(\pi t)}$$

??? example "הוכחה"
    זהו סכום של סדרה הנדסית עם מנה $e^{2\pi it}$:
    $$D_N(t) = e^{-2\pi iNt}\cdot\frac{e^{2\pi i(2N+1)t}-1}{e^{2\pi it}-1} = \frac{e^{2\pi i(N+1/2)t}-e^{-2\pi i(N+1/2)t}}{e^{\pi it}-e^{-\pi it}} = \frac{\sin\bigl(\pi(2N+1)t\bigr)}{\sin(\pi t)}$$
    $\blacksquare$

!!! success "טענה 5.2 (סכום פורייה כקונבולוציה)"
    $$S_Nf(t) = (f * D_N)(t) = \int_0^1 f(t-s)D_N(s)\,ds$$

!!! note "הערה — תכונות גרעין דיריכלה"
    1. $\int_0^1 D_N(t)\,dt = 1$ (כי $\hat{D}_N(0) = 1$)
    2. $D_N$ זוגי: $D_N(-t) = D_N(t)$
    3. $D_N$ פולינום טריגונומטרי מדרגה $N$

## 5.2 קונבולוציה

!!! info "הגדרה 5.3 (קונבולוציה)"
    עבור $f,g \in R(\mathbb{R}/\mathbb{Z})$, **הקונבולוציה** שלהן היא:
    $$(f*g)(t) = \int_0^1 f(t-s)g(s)\,ds$$

!!! success "טענה 5.4 (תכונות הקונבולוציה)"
    1. **חילופיות:** $f*g = g*f$
    2. **לינאריות:** $f*(g+h) = f*g + f*h$, $f*(cg) = c(f*g)$
    3. **אסוציאטיביות:** $(f*g)*h = f*(g*h)$
    4. **מעבר לצד פורייה:** $\widehat{f*g}(k) = \hat{f}(k)\cdot\hat{g}(k)$
    5. **חלקות:** אם $f \in R(\mathbb{R}/\mathbb{Z})$ ו-$g \in C(\mathbb{R}/\mathbb{Z})$, אז $f*g \in C(\mathbb{R}/\mathbb{Z})$

??? example "הוכחה (תכונה 4)"
    $$\widehat{f*g}(k) = \int_0^1\left(\int_0^1 f(t-s)g(s)\,ds\right)e^{-2\pi ikt}\,dt$$
    $$= \int_0^1 g(s)e^{-2\pi iks}\left(\int_0^1 f(t-s)e^{-2\pi ik(t-s)}\,dt\right)ds = \hat{g}(k)\cdot\hat{f}(k)$$
    $\blacksquare$

## 5.3 למת רימן-לבג

!!! success "משפט 5.5 (למת רימן-לבג)"
    אם $f \in R[a,b]$, אז:
    $$\int_a^b f(t)e^{i\lambda t}\,dt \to 0, \quad \lambda \to \pm\infty$$

    בפרט, אם $f \in R(\mathbb{R}/\mathbb{Z})$ אז $\hat{f}(k) \to 0$ כאשר $|k| \to \infty$.

??? example "הוכחה"
    **שלב 1 — פונקציות מדרגה:** אם $f = \mathbf{1}_{[c,d]}$:
    $$\int_c^d e^{i\lambda t}\,dt = \frac{e^{i\lambda d}-e^{i\lambda c}}{i\lambda} \to 0$$

    **שלב 2 — קירוב:** לכל $\varepsilon > 0$ קיימת פונקציית מדרגה $\varphi$ עם $\int_a^b|f-\varphi| < \varepsilon$. אז:
    $$\left|\int_a^b f\, e^{i\lambda t}\,dt\right| \le \left|\int_a^b \varphi\, e^{i\lambda t}\,dt\right| + \int_a^b|f-\varphi| < \left|\int_a^b \varphi\, e^{i\lambda t}\,dt\right| + \varepsilon$$

    האיבר הראשון שואף ל-$0$ (שלב 1 + לינאריות), ו-$\varepsilon$ שרירותי. $\blacksquare$

## 5.4 עקרון הלוקליזציה של רימן

!!! success "משפט 5.6 (עקרון הלוקליזציה)"
    ההתכנסות (או אי-ההתכנסות) של $S_Nf(t_0)$ תלויה **רק בהתנהגות המקומית** של $f$ בסביבת $t_0$.

    באופן מדויק: אם $f = g$ בסביבה כלשהי של $t_0$, אז $S_Nf(t_0) - S_Ng(t_0) \to 0$.

??? example "הוכחה"
    נגדיר $h = f - g$. אז $h = 0$ בסביבת $t_0$, ולכן $\frac{h(t_0-s)}{\sin(\pi s)}$ אינטגרבילית. מלמת רימן-לבג:
    $$S_Nh(t_0) = \int_0^1 h(t_0-s)D_N(s)\,ds = \int_0^1 \frac{h(t_0-s)}{\sin(\pi s)}\sin\bigl(\pi(2N+1)s\bigr)\,ds \to 0$$
    $\blacksquare$

## 5.5 תנאי הלדר והתכנסות נקודתית

!!! info "הגדרה 5.7 (תנאי הלדר)"
    פונקציה $f$ מקיימת **תנאי הלדר (Hölder)** מסדר $\alpha \in (0,1]$ בנקודה $t_0$ אם:
    $$|f(t_0+s)-f(t_0)| \le C|s|^\alpha$$
    לקבוע $C>0$ כלשהו ול-$|s|$ קטן מספיק.

!!! success "משפט 5.8 (התכנסות נקודתית בתנאי הלדר)"
    אם $f \in R(\mathbb{R}/\mathbb{Z})$ מקיימת תנאי הלדר מסדר $\alpha > 0$ בנקודה $t_0$, אז:
    $$S_Nf(t_0) \to f(t_0)$$

!!! note "הערה"
    מקרים פרטיים חשובים:

    - אם $f$ **גזירה** ב-$t_0$ (ובפרט $C^1$), אז $f$ מקיימת הלדר עם $\alpha = 1$ (ליפשיץ).
    - אם $f$ **ליפשיצית** ב-$t_0$: $|f(t_0+s)-f(t_0)| \le L|s|$, אז מתקיים הלדר.

## 5.6 תנאי דיני וג'ורדן

!!! success "משפט 5.9 (תנאי דיני — Dini)"
    אם $f \in R(\mathbb{R}/\mathbb{Z})$ ומתקיים:
    $$\int_0^{1/2} \frac{|f(t_0+s)+f(t_0-s)-2f(t_0)|}{s}\,ds < \infty$$
    אז $S_Nf(t_0) \to f(t_0)$.

!!! success "משפט 5.10 (תנאי ג'ורדן — Jordan)"
    אם $f$ בעלת **וריאציה חסומה** בסביבת $t_0$ ורציפה ב-$t_0$, אז $S_Nf(t_0) \to f(t_0)$.

    אם $f$ בעלת וריאציה חסומה בסביבת $t_0$ ויש לה גבולות חד-צדדיים, אז:
    $$S_Nf(t_0) \to \frac{f(t_0^+)+f(t_0^-)}{2}$$

## 5.7 סכימת פייר (Fejér)

!!! info "הגדרה 5.11 (ממוצעי צזארו)"
    **ממוצעי צזארו** (Fejér) של טור פורייה:
    $$\sigma_Nf(t) = \frac{1}{N}\sum_{n=0}^{N-1}S_nf(t) = (f * F_N)(t)$$

    כאשר **גרעין פייר**:
    $$F_N(t) = \frac{1}{N}\sum_{n=0}^{N-1}D_n(t) = \frac{1}{N}\cdot\frac{\sin^2(\pi Nt)}{\sin^2(\pi t)}$$

!!! note "הערה — תכונות גרעין פייר"
    1. $F_N(t) \ge 0$ לכל $t$ (בניגוד לגרעין דיריכלה!)
    2. $\int_0^1 F_N(t)\,dt = 1$
    3. לכל $\delta > 0$: $\int_{\delta}^{1-\delta} F_N(t)\,dt \to 0$ כאשר $N \to \infty$

    כלומר $F_N$ הוא **גרעין קירובי** (approximate identity).

!!! success "משפט 5.12 (פייר — Fejér)"
    אם $f \in C(\mathbb{R}/\mathbb{Z})$ אז $\sigma_Nf \rightrightarrows f$ (התכנסות במ"ש).

??? example "הוכחה"
    יהי $\varepsilon > 0$. מרציפות במ"ש של $f$ על $[0,1]$, קיים $\delta > 0$ כך שאם $|s| < \delta$ אז $|f(t-s)-f(t)| < \varepsilon$ לכל $t$.

    $$|\sigma_Nf(t)-f(t)| = \left|\int_0^1(f(t-s)-f(t))F_N(s)\,ds\right|$$

    נפצל ל-$|s|<\delta$ ו-$|s|\ge\delta$:

    **חלק קרוב:** $\int_{|s|<\delta}|f(t-s)-f(t)|F_N(s)\,ds \le \varepsilon\int_0^1 F_N = \varepsilon$

    **חלק רחוק:** $\int_{|s|\ge\delta}|f(t-s)-f(t)|F_N(s)\,ds \le 2\|f\|_\infty\int_{|s|\ge\delta}F_N(s)\,ds \to 0$

    לכן $\|\sigma_Nf - f\|_\infty \to 0$. $\blacksquare$

!!! note "הערה"
    ממשפט פייר ניתן להסיק:

    - **משפט הקירוב של ויירשטראס** (לפולינומים טריגונומטריים)
    - **נוסחת פרסבל** (כי קירוב במ"ש גורר קירוב ב-$L^2$)
    - **יחידות מקדמי פורייה:** אם $\hat{f}(k)=0$ לכל $k$ ו-$f$ רציפה, אז $f=0$

---

## תרגילים

!!! question "תרגיל 1"
    הוכיחו: אם $f \in R(\mathbb{R}/\mathbb{Z})$ ו-$\hat{f}(k)=0$ לכל $k\in\mathbb{Z}$, אז $f(t_0)=0$ בכל נקודת רציפות $t_0$ של $f$.

??? success "פתרון"
    אם $\hat{f}(k)=0$ לכל $k$, אז $S_Nf = 0$ לכל $N$, ולכן $\sigma_Nf = 0$ לכל $N$.

    אם $f$ רציפה ב-$t_0$, אז $\sigma_Nf(t_0) \to f(t_0)$ (לפי משפט פייר, מקומית). לכן $f(t_0)=0$. $\blacksquare$

!!! question "תרגיל 2"
    תהי $f \in C(\mathbb{R}/\mathbb{Z})$ כך ש-$\hat{f}(k)=0$ לכל $k < 0$. הוכיחו ש-$S_Nf = \sigma_Nf$ לכל $N$.

??? success "פתרון"
    $S_Nf(t) = \sum_{k=0}^N\hat{f}(k)e_k(t)$ (כי $\hat{f}(k)=0$ ל-$k<0$).

    $\sigma_Nf(t) = \frac{1}{N}\sum_{n=0}^{N-1}S_nf(t) = \frac{1}{N}\sum_{n=0}^{N-1}\sum_{k=0}^n\hat{f}(k)e_k(t) = \sum_{k=0}^{N-1}\frac{N-k}{N}\hat{f}(k)e_k(t)$

    אלו לא שווים באופן כללי. נבדוק: $S_Nf$ כולל את $\hat{f}(N)e_N$ בעוד $\sigma_Nf$ לא. הטענה אינה נכונה באופן כללי — אלא אם $f$ פולינום טריגונומטרי. $\blacksquare$

!!! question "תרגיל 3"
    הוכיחו שגרעין פייר מקיים $F_N(t) = \frac{1}{N}\cdot\frac{\sin^2(\pi Nt)}{\sin^2(\pi t)}$.

??? success "פתרון"
    $$NF_N(t) = \sum_{n=0}^{N-1}D_n(t) = \sum_{n=0}^{N-1}\sum_{k=-n}^{n}e_k(t)$$

    נחליף סדר סיכום: $e_k$ מופיע ב-$D_n$ לכל $n \ge |k|$, כלומר $N-|k|$ פעמים (ל-$|k| \le N-1$):
    $$NF_N(t) = \sum_{|k|\le N-1}(N-|k|)e_k(t)$$

    זהו טור פורייה של $F_N$ עם $\widehat{F_N}(k) = \max\{1-\frac{|k|}{N}, 0\}$.

    כעת נשתמש בכך ש-$D_n(t) = \frac{\sin(\pi(2n+1)t)}{\sin(\pi t)}$ ובזהות:
    $$\sum_{n=0}^{N-1}\sin\bigl(\pi(2n+1)t\bigr) = \frac{\sin^2(\pi Nt)}{\sin(\pi t)}$$

    (זהות טלסקופית דרך $\cos$). לכן $NF_N(t) = \frac{\sin^2(\pi Nt)}{\sin^2(\pi t)}$. $\blacksquare$
