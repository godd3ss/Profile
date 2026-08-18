<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Lim Shi En — Bowler</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=IBM+Plex+Sans:wght@400;500;600&family=IBM+Plex+Mono:wght@400;600&display=swap" rel="stylesheet">
<style>
  :root{
    --ink:#121218;
    --ink-2:#1B1B22;
    --paper:#F2EFE9;
    --paper-dim:#A9A6A0;
    --accent:#E6432D;
    --accent-dim:#7A2418;
    --line: rgba(242,239,233,0.14);
  }
  *{margin:0;padding:0;box-sizing:border-box;}
  html{scroll-behavior:smooth;}
  body{background:var(--ink);color:var(--paper);font-family:'IBM Plex Sans',sans-serif;overflow-x:hidden;}
  .display{font-family:'Bebas Neue',sans-serif;letter-spacing:0.02em;text-transform:uppercase;line-height:0.9;}
  .mono{font-family:'IBM Plex Mono',monospace;}
  a{color:inherit;}
  .wrap{max-width:980px;margin:0 auto;padding:0 28px;}

  nav{position:fixed;top:0;left:0;right:0;z-index:50;display:flex;justify-content:space-between;align-items:center;padding:20px 28px;background:rgba(18,18,24,0.82);backdrop-filter:blur(6px);border-bottom:1px solid var(--line);}
  nav .brand{font-family:'Bebas Neue',sans-serif;font-size:20px;letter-spacing:0.06em;}
  nav .links{display:flex;gap:26px;font-size:12px;letter-spacing:0.12em;text-transform:uppercase;}
  nav .links a{text-decoration:none;color:var(--paper-dim);transition:color .2s;}
  nav .links a:hover{color:var(--accent);}
  @media(max-width:600px){nav .links{display:none;}}

  .hero{position:relative;min-height:100vh;display:flex;flex-direction:column;justify-content:center;padding:140px 28px 100px;}
  .hero .lanes{position:absolute;inset:0;background:repeating-linear-gradient(180deg, transparent 0 78px, var(--line) 78px 79px);opacity:0.6;pointer-events:none;}
  .hero-inner{position:relative;max-width:980px;margin:0 auto;width:100%;}
  .eyebrow{font-family:'IBM Plex Mono',monospace;font-size:12px;letter-spacing:0.28em;color:var(--accent);text-transform:uppercase;margin-bottom:22px;}
  .hero h1{font-size:clamp(64px,15vw,168px);color:var(--paper);}
  .hero h1 .accent{color:var(--accent);}
  .hero p.tag{margin-top:26px;font-size:17px;color:var(--paper-dim);max-width:460px;line-height:1.6;}
  .scroll-cue{position:absolute;bottom:0;left:28px;display:flex;align-items:center;gap:10px;font-family:'IBM Plex Mono',monospace;font-size:11px;letter-spacing:0.14em;color:var(--paper-dim);text-transform:uppercase;}
  .scroll-cue .bar{width:1px;height:40px;background:var(--paper-dim);position:relative;overflow:hidden;}
  .scroll-cue .bar::after{content:"";position:absolute;top:-40px;left:0;width:1px;height:40px;background:var(--accent);animation:slide 1.8s ease-in-out infinite;}
  @keyframes slide{0%{top:-40px;}100%{top:40px;}}

  section{padding:100px 0;border-top:1px solid var(--line);}
  .section-num{font-family:'IBM Plex Mono',monospace;font-size:12px;color:var(--accent);letter-spacing:0.2em;text-transform:uppercase;margin-bottom:14px;}
  .section-title{font-size:clamp(34px,6vw,58px);margin-bottom:44px;}

  /* ABOUT */
  .about-grid{display:grid;grid-template-columns:0.85fr 1.15fr;gap:56px;align-items:center;}
  .pin-frame{border:1px solid var(--line);background:var(--ink-2);display:flex;align-items:center;justify-content:center;aspect-ratio:3/4;}
  .pin-frame svg{width:44%;}
  .about-grid p{font-size:16px;line-height:1.75;color:var(--paper-dim);margin-bottom:16px;}
  .about-grid strong{color:var(--paper);font-weight:600;}
  .facts-row{display:flex;flex-wrap:wrap;gap:28px;margin-top:28px;padding-top:24px;border-top:1px solid var(--line);}
  .fact dt{font-family:'IBM Plex Mono',monospace;font-size:11px;color:var(--paper-dim);letter-spacing:0.1em;text-transform:uppercase;margin-bottom:4px;}
  .fact dd{font-size:15px;color:var(--paper);}
  @media(max-width:760px){.about-grid{grid-template-columns:1fr;}.pin-frame{max-width:220px;margin:0 auto;}}

  /* ACHIEVEMENTS + pin tally */
  .tally{display:flex;align-items:flex-end;gap:6px;margin-bottom:52px;}
  .tally-pin{width:14px;height:34px;border-radius:7px 7px 3px 3px;background:var(--ink-2);border:1px solid var(--line);position:relative;}
  .tally-pin.down{background:var(--accent);border-color:var(--accent);}
  .tally-pin::after{content:"";position:absolute;top:9px;left:2px;right:2px;height:2px;background:rgba(255,255,255,0.15);}
  .tally-label{font-family:'IBM Plex Mono',monospace;font-size:11px;color:var(--paper-dim);margin-left:14px;align-self:center;letter-spacing:0.06em;text-transform:uppercase;}

  .achieve-list{border-top:1px solid var(--line);}
  .achieve-row{display:grid;grid-template-columns:96px 1fr auto;gap:22px;align-items:baseline;padding:26px 0;border-bottom:1px solid var(--line);}
  .achieve-row .year{font-family:'IBM Plex Mono',monospace;color:var(--accent);font-size:15px;}
  .achieve-row .title{font-size:18px;color:var(--paper);}
  .achieve-row .venue{display:block;margin-top:4px;font-size:13px;color:var(--paper-dim);}
  .medal{font-family:'IBM Plex Mono',monospace;font-size:11px;letter-spacing:0.1em;text-transform:uppercase;padding:5px 12px;border-radius:2px;white-space:nowrap;}
  .medal.gold{background:var(--accent);color:var(--ink);}
  .medal.silver{border:1px solid var(--paper-dim);color:var(--paper-dim);}
  .medal.bronze{border:1px solid var(--accent-dim);color:var(--accent);}
  @media(max-width:560px){.achieve-row{grid-template-columns:1fr;gap:8px;}}

  /* SOCIALS FOOTER */
  footer{padding:80px 0 40px;border-top:1px solid var(--line);}
  .social-row{display:flex;flex-wrap:wrap;gap:16px;}
  .social-pill{font-family:'IBM Plex Mono',monospace;font-size:13px;letter-spacing:0.05em;padding:12px 22px;border:1px solid var(--line);border-radius:2px;text-decoration:none;color:var(--paper);transition:all .2s;}
  .social-pill:hover{border-color:var(--accent);color:var(--accent);}
  .fine{margin-top:56px;padding-top:22px;border-top:1px solid var(--line);font-family:'IBM Plex Mono',monospace;font-size:11px;color:var(--paper-dim);}

  .reveal{opacity:0;transform:translateY(20px);transition:opacity .6s ease,transform .6s ease;}
  .reveal.in{opacity:1;transform:translateY(0);}
  @media(prefers-reduced-motion:reduce){.reveal{opacity:1;transform:none;transition:none;}.scroll-cue .bar::after{animation:none;}}
</style>
</head>
<body>

<nav>
  <div class="brand">LIM SHI EN</div>
  <div class="links">
    <a href="#about">About</a>
    <a href="#achievements">Achievements</a>
    <a href="#socials">Socials</a>
  </div>
</nav>

<section class="hero">
  <div class="lanes"></div>
  <div class="hero-inner">
    <div class="eyebrow mono">Competitive tenpin bowler · Singapore</div>
    <h1 class="display">LIM<br>SHI<br><span class="accent">EN</span></h1>
    <p class="tag">Ten frames. One line down the boards. Every game is a new count.</p>
  </div>
  <div class="scroll-cue"><div class="bar"></div>Scroll</div>
</section>

<section id="about">
  <div class="wrap">
    <div class="section-num mono reveal">01 / About</div>
    <div class="section-title display reveal">On the approach</div>
    <div class="about-grid reveal">
      <div class="pin-frame">
        <svg viewBox="0 0 60 140" fill="none" xmlns="http://www.w3.org/2000/svg">
          <path d="M30 6c6 0 9 5 9 10 0 3-1.5 5-3 7 5 4 8 11 8 20 0 10-4 16-4 24 0 9 6 14 6 30 0 15-7 27-16 27s-16-12-16-27c0-16 6-21 6-30 0-8-4-14-4-24 0-9 3-16 8-20-1.5-2-3-4-3-7 0-5 3-10 9-10z" stroke="#F2EFE9" stroke-width="1.4"/>
          <line x1="14" y1="63" x2="46" y2="63" stroke="#E6432D" stroke-width="1.4"/>
          <line x1="14" y1="70" x2="46" y2="70" stroke="#E6432D" stroke-width="1.4"/>
        </svg>
      </div>
      <div>
        <p>Lim Shi En bowls for Singapore on the national circuit. A controlled two-handed release and a calm read of changing oil patterns have made her the player teams want on the anchor lane when a match comes down to the last frame.</p>
        <p>She started at nine, moved into youth leagues by twelve, and has spent the years since working up from junior tournaments to open national competition. <strong>This is placeholder copy</strong> — swap in her real story before publishing.</p>
        <div class="facts-row">
          <dl class="fact"><dt>Hand</dt><dd>Two-handed</dd></dl>
          <dl class="fact"><dt>Home centre</dt><dd>Orchid Bowl</dd></dl>
          <dl class="fact"><dt>Turned pro</dt><dd>2019</dd></dl>
          <dl class="fact"><dt>Coach</dt><dd>M. Tanaka</dd></dl>
        </div>
      </div>
    </div>
  </div>
</section>

<section id="achievements">
  <div class="wrap">
    <div class="section-num mono reveal">02 / Achievements</div>
    <div class="section-title display reveal">Tournament record</div>

    <div class="tally reveal">
      <div class="tally-pin down"></div><div class="tally-pin down"></div><div class="tally-pin down"></div>
      <div class="tally-pin"></div><div class="tally-pin"></div>
      <span class="tally-label">3 golds set the pace</span>
    </div>

    <div class="achieve-list reveal">
      <div class="achieve-row">
        <div class="year mono">2025</div>
        <div><span class="title">Singapore National Championships</span><span class="venue">Singapore</span></div>
        <div class="medal gold">Gold</div>
      </div>
      <div class="achieve-row">
        <div class="year mono">2024</div>
        <div><span class="title">SEA Bowling Championships — Team event</span><span class="venue">Bangkok, Thailand</span></div>
        <div class="medal silver">Silver</div>
      </div>
      <div class="achieve-row">
        <div class="year mono">2023</div>
        <div><span class="title">Asian Tenpin Bowling Open</span><span class="venue">Kuala Lumpur, Malaysia</span></div>
        <div class="medal bronze">Bronze</div>
      </div>
      <div class="achieve-row">
        <div class="year mono">2022</div>
        <div><span class="title">Singapore National Championships</span><span class="venue">Singapore</span></div>
        <div class="medal gold">Gold</div>
      </div>
      <div class="achieve-row">
        <div class="year mono">2021</div>
        <div><span class="title">National Youth-to-Open Transition Cup</span><span class="venue">Singapore</span></div>
        <div class="medal gold">Gold</div>
      </div>
    </div>
    <p class="mono" style="margin-top:16px;font-size:12px;color:var(--paper-dim);">Placeholder results — swap in her real tournament history.</p>
  </div>
</section>

<footer id="socials">
  <div class="wrap">
    <div class="section-num mono reveal">03 / Socials</div>
    <div class="section-title display reveal">Follow along</div>
    <div class="social-row reveal">
      <a class="social-pill" href="#">Instagram</a>
      <a class="social-pill" href="#">TikTok</a>
      <a class="social-pill" href="#">Facebook</a>
      <a class="social-pill" href="mailto:hello@limshien.example">Email</a>
    </div>
    <div class="fine">Lim Shi En · Competitive tenpin bowler · Template — replace links, stats and copy with the real details.</div>
  </div>
</footer>

<script>
  const revealEls = document.querySelectorAll('.reveal');
  const io = new IntersectionObserver((entries)=>{
    entries.forEach(e=>{ if(e.isIntersecting){ e.target.classList.add('in'); io.unobserve(e.target); } });
  },{threshold:0.15});
  revealEls.forEach(el=>io.observe(el));
</script>

</body>
</html>
