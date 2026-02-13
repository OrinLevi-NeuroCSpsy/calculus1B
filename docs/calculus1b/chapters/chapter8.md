# פרק 8: גזירות

## 8.1 הגדרת הנגזרת

!!! info "הגדרה 8.1"
    **הנגזרת** של $f$ בנקודה $x_0$:
    $$f'(x_0) = \lim_{x \to x_0} \frac{f(x) - f(x_0)}{x - x_0} = \lim_{h \to 0} \frac{f(x_0 + h) - f(x_0)}{h}$$

!!! success "משפט 8.2"
    גזירה ⟹ רציפה (ההפך לא נכון!)

## 8.2 כללי גזירה

!!! success "משפט 8.3"
    - $(f + g)' = f' + g'$
    - $(cf)' = cf'$
    - $(fg)' = f'g + fg'$ **(כלל המכפלה)**
    - $\left(\frac{f}{g}\right)' = \frac{f'g - fg'}{g^2}$ **(כלל המנה)**

!!! success "משפט 8.4 (כלל השרשרת)"
    $$(f \circ g)'(x) = f'(g(x)) \cdot g'(x)$$

## 8.3 טבלת נגזרות

| $f(x)$ | $f'(x)$ |
|--------|---------|
| $x^n$ | $nx^{n-1}$ |
| $e^x$ | $e^x$ |
| $\ln x$ | $\frac{1}{x}$ |
| $\sin x$ | $\cos x$ |
| $\cos x$ | $-\sin x$ |
| $\tan x$ | $\frac{1}{\cos^2 x}$ |
| $\arcsin x$ | $\frac{1}{\sqrt{1-x^2}}$ |
| $\arctan x$ | $\frac{1}{1+x^2}$ |

## 8.4 משפטי ערך הביניים

!!! success "משפט 8.5 (פרמה)"
    אם $f$ מקבלת קיצון מקומי ב-$x_0$ פנימית וגזירה שם, אז $f'(x_0) = 0$.

!!! success "משפט 8.6 (רול)"
    אם $f : [a, b] \to \mathbb{R}$ רציפה, גזירה ב-$(a, b)$, ו-$f(a) = f(b)$, אז קיים $c \in (a, b)$ כך ש-$f'(c) = 0$.

!!! success "משפט 8.7 (לגרנז')"
    אם $f : [a, b] \to \mathbb{R}$ רציפה וגזירה ב-$(a, b)$, קיים $c \in (a, b)$ כך ש:
    $$f'(c) = \frac{f(b) - f(a)}{b - a}$$

## 8.5 כלל לופיטל

!!! success "משפט 8.8 (לופיטל $\frac{0}{0}$)"
    אם $\lim_{x \to a} f(x) = \lim_{x \to a} g(x) = 0$ וקיים $\lim_{x \to a} \frac{f'(x)}{g'(x)} = L$, אז:
    $$\lim_{x \to a} \frac{f(x)}{g(x)} = L$$

!!! success "משפט 8.9 (לופיטל $\frac{\infty}{\infty}$)"
    אם $\lim_{x \to a} |f(x)| = \lim_{x \to a} |g(x)| = \infty$ וקיים $\lim_{x \to a} \frac{f'(x)}{g'(x)} = L$, אז:
    $$\lim_{x \to a} \frac{f(x)}{g(x)} = L$$

!!! example "דוגמאות"
    1. $\lim_{x \to 0} \frac{e^x - 1 - x}{x^2} = \lim_{x \to 0} \frac{e^x - 1}{2x} = \lim_{x \to 0} \frac{e^x}{2} = \frac{1}{2}$

    2. $\lim_{x \to 0^+} x \ln x = \lim_{x \to 0^+} \frac{\ln x}{1/x} = \lim_{x \to 0^+} \frac{1/x}{-1/x^2} = \lim_{x \to 0^+} (-x) = 0$

    3. $\lim_{x \to 0^+} x^x = e^{\lim x \ln x} = e^0 = 1$

## 8.6 פולינום טיילור

!!! info "הגדרה 8.10"
    **פולינום טיילור מדרגה $n$** סביב $x_0$:
    $$P_n(x) = \sum_{k=0}^{n} \frac{f^{(k)}(x_0)}{k!}(x - x_0)^k$$

!!! success "משפט 8.11 (שארית לגרנז')"
    $$f(x) = P_n(x) + \frac{f^{(n+1)}(c)}{(n+1)!}(x - x_0)^{n+1}$$

!!! note "פיתוחי מקלורן חשובים"
    $$e^x = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$$

    $$\sin x = x - \frac{x^3}{3!} + \frac{x^5}{5!} - \cdots$$

    $$\cos x = 1 - \frac{x^2}{2!} + \frac{x^4}{4!} - \cdots$$

    $$\ln(1+x) = x - \frac{x^2}{2} + \frac{x^3}{3} - \cdots$$

    $$\frac{1}{1-x} = 1 + x + x^2 + x^3 + \cdots$$

---

## תרגילים

!!! question "תרגיל 1"
    חשבו $\lim_{x \to 0} \frac{\sin x - x + \frac{x^3}{6}}{x^5}$.

??? success "פתרון"
    פיתוח טיילור: $\sin x = x - \frac{x^3}{6} + \frac{x^5}{120} - O(x^7)$

    $$\sin x - x + \frac{x^3}{6} = \frac{x^5}{120} - O(x^7)$$

    $$\frac{\sin x - x + \frac{x^3}{6}}{x^5} = \frac{1}{120} - O(x^2) \to \boxed{\frac{1}{120}}$$

    $\blacksquare$

!!! question "תרגיל 2"
    הוכיחו כי לכל $x > 0$: $\ln(1 + x) < x$.

??? success "פתרון"
    נגדיר $f(x) = x - \ln(1+x)$ לכל $x > 0$.

    $f(0) = 0$

    $f'(x) = 1 - \frac{1}{1+x} = \frac{x}{1+x} > 0$ לכל $x > 0$

    לכן $f$ עולה ממש ב-$(0, \infty)$.

    מכאן $f(x) > f(0) = 0$ לכל $x > 0$, כלומר $x > \ln(1+x)$. $\blacksquare$
