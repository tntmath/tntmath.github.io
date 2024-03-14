---
layout: distill
title: Some notes on the Diophantine condition
description: collections of some random notes on irrational numbers and dynamical systems
tags: math
giscus_comments: true
date: 2024-02-29
featured: true
published: true

# authors:
#   - name: Albert Einstein
#     url: "https://en.wikipedia.org/wiki/Albert_Einstein"
#     affiliations:
#       name: IAS, Princeton
#   - name: Boris Podolsky
#     url: "https://en.wikipedia.org/wiki/Boris_Podolsky"
#     affiliations:
#       name: IAS, Princeton
#   - name: Nathan Rosen
#     url: "https://en.wikipedia.org/wiki/Nathan_Rosen"
#     affiliations:
#       name: IAS, Princeton

bibliography: 2018-12-22-distill.bib

# Optionally, you can add a table of contents to your post.
# NOTES:
#   - make sure that TOC names match the actual section names
#     for hyperlinks within the post to work correctly.
#   - we may want to automate TOC generation in the future using
#     jekyll-toc plugin (https://github.com/toshimaru/jekyll-toc).
toc:
  - name: Diophantine condition
    # if a section has subsections, you can add them as follows:
    # subsections:
    #   - name: Example Child Subsection 1
    #   - name: Example Child Subsection 2
#   - name: Citations
  # - name: Footnotes
  # - name: Code Blocks
  # - name: Interactive Plots
  # - name: Layouts
  # - name: Other Typography?

# Below is an example of injecting additional post-specific styles.
# If you use this post as a template, delete this _styles block.
_styles: >
  .fake-img {
    background: #bbb;
    border: 1px solid rgba(0, 0, 0, 0.1);
    box-shadow: 0 0px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: 12px;
  }
  .fake-img p {
    font-family: monospace;
    color: white;
    text-align: left;
    margin: 12px 0;
    text-align: center;
    font-size: 16px;
  }
  .post .post-content blockquote {
    &.block-tip {
    border-color: var(--global-tip-block);
    background-color: var(--global-tip-block-bg);

    p {
      color: var(--global-tip-block-text);
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      color: var(--global-tip-block-title);
    }
  }

  &.block-warning {
    border-color: var(--global-warning-block);
    background-color: var(--global-warning-block-bg);

    p {
      color: var(--global-warning-block-text);
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6 {
      color: var(--global-warning-block-title);
    }
  }
  }
---


## Diophantine condition



A vector $\xi\in \mathbb{R}^m$ satisfies a Diophantine condition <d-footnote>[Diophantine Approximation](https://en.wikipedia.org/wiki/)</d-footnote> if 
there exists a constant $C(\xi)>0$ and $\sigma(\xi)>0$ 
such that 

$$
    |\xi\cdot \mathbf{k}| 
    \geq 
    \frac{C}{|\mathbf{k}|^\sigma}
    \;\text{for any}\; 
    \mathbf{k}\in \mathbb{Z}^m\backslash \lbrace 0 \rbrace.
$$

Let us verify that $\xi = (1,\sqrt{2})$ satisfies such a condition. First of all, 
if $(a,b)\in \mathbb{Z}\times \mathbb{Z}_{>0}$ then

$$
    \left|\frac{a}{b} - \sqrt{2}\right| \geq \left|\frac{|a|}{b} - \sqrt{2}\right|.
$$

Therefore we can focus on $a,b>0$. 
- If $\frac{a}{b} \geq 3-\sqrt{2}$ then $\frac{a}{b} -\sqrt{2} \geq 3-2\sqrt{2}$. Let $C(\xi) = 3-2\sqrt{2}$, we have
  
    $$
        \left|\frac{a}{b} - \sqrt{2}\right| \geq C \geq \frac{C}{b^2}
    $$

  since $b\geq 1$. 

- If $0\leq \frac{a}{b} \leq 3-\sqrt{2}$ then $b\sqrt{2}\leq a+b\sqrt{2} \leq 3b$, thus 
 $|a+b\sqrt{2}| \leq 3b$. Therefore
 
  $$
    \left|\frac{a}{b} - \sqrt{2}\right| = \frac{|a-b\sqrt{2}|}{b} = \frac{|a^2-2b^2|}{b|a+b\sqrt{2}|} \geq \frac{1}{3b^2} > \frac{C}{b^2}. 
  $$

  since $\frac{1}{3} > 3-2\sqrt{2} = C$.

Therefore

$$
    \begin{equation}
        |(a,b)\cdot(1,\sqrt{2})| = |a+b\sqrt{2}| \geq \frac{C}{|b|} \geq \frac{C}{\sqrt{a^2+b^2}} = \frac{C}{|(a,b)|}.
    \end{equation}
$$

Thus $\xi = (1,\sqrt{2})$ satisfies Diophantine condition with exponent $\sigma = 1$ and $C(\xi) = 3-2\sqrt{2}$. 


<!--  I learned that this is quite old, for example pp.203-204 in <d-cite key="stanislawSaks1937"></d-cite>. -->




