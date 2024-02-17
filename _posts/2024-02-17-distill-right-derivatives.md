---
layout: distill
title: A simple remark on one-sided derivative
description: an example of a distill-style blog post and main elements
tags: math
giscus_comments: true
date: 2024-02-17
featured: true

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
# toc:
  # - name: Equations
    # if a section has subsections, you can add them as follows:
    # subsections:
    #   - name: Example Child Subsection 1
    #   - name: Example Child Subsection 2
  # - name: Citations
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

This simple result appears in one of my research project, which I think it worth noting here. 

> ##### Theorem
> Let $I$ be an open interval in $\mathbb{R}$.
> Let $f : I \rightarrow \mathbb{R}$ continuous right-hand derivable, such that $f'_+ \geqslant 0$ $\forall t\in I$. Show that $f$ is non-decreasing.
{: .block-tip }


> ##### Proof.
>Suppose we have something stronger, that is for all $x$ we have $f'_+(x) > 0$, then $f(y)>f(x)$ for all $y\in (x,x+\varepsilon_x)$ for some $\varepsilon_x > 0$ small. Let $[a,b]\subset I$, we define
>
>$$
>  F(x) = \max \left\lbrace f(t): t\in [a,x] \right\rbrace. 
>$$
>
>By continuity, there exists $t_x \in [a,x]$ such that $F(x) = f(t_x)$. Suppose that $t_x < x$, we observe that by the definition of $f'_+(t_x) > 0$ we have
>
>$$
>  f(y) > f(t_x) \qquad\text{for}\; y \in (t_x,t_x+\varepsilon] \subset [a,x].
>$$
>
>This is a contradiction to the fact that $f(t_x) = F(x)=\max_{[a,x]} f$. Therefore $t_x = x$, and thus 
>
>$$
>  f(x) = \max_{[a,x]} f. 
>$$
>
>Therefore $f$ is increasing on $[a,b]$, and thus $f$ is increasing in $I$. 
>
>Now if $f'_{+}(x) \geq 0$, we consider the classic trick 
>
>$$
>  f_\varepsilon(x) = f(x)+\varepsilon x
>$$
>
>for $\varepsilon>0$ small. The previous result applies to give us
>
>$$
>  f_\varepsilon(y)>f_\varepsilon(x)  \qquad\text{for}\\;x,y\in I, y>x.
>$$
>
>Let $\varepsilon\to 0$ we deduce the conclusion.
>{: .block-warning }

I learned that this is quite old, for example pp.203-204 in <d-cite key="stanislawSaks1937"></d-cite>.

---
