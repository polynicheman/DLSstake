<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
<meta name="theme-color" content="#070d16" />
<title>Profile — DLS Stake</title>
<meta name="description" content="Manage your account, security, and preferences." />

<style>
:root{
  --bg:#070d16; --bg-2:#0b1420;
  --surface:#111d2e; --surface-2:#16263b; --surface-3:#1c3049;
  --border:#1e3048; --border-2:#27405f;
  --primary:#00d97e; --primary-dark:#00a860; --primary-glow:rgba(0,217,126,.25);
  --accent:#2f80ed; --danger:#ff4d5e; --danger-dark:#d93a4a;
  --warn:#ffb020; --purple:#8b5cf6;
  --text:#e6eef8; --text-2:#b8c9dc;
  --muted:#7b90a8; --muted-2:#556b85;
  --radius-sm:8px; --radius:14px; --radius-lg:22px; --radius-full:999px;
  --shadow:0 8px 28px rgba(0,0,0,.45);
  --shadow-lg:0 20px 60px rgba(0,0,0,.6);
  --ff:'Inter',-apple-system,BlinkMacSystemFont,'Segoe UI',Roboto,'Helvetica Neue',Arial,sans-serif;
  --ff-mono:'SF Mono',ui-monospace,'Cascadia Code',Consolas,monospace;
  --nav-h:62px;
}
*,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
html{-webkit-text-size-adjust:100%}
body{font-family:var(--ff);background:var(--bg);color:var(--text);line-height:1.55;-webkit-font-smoothing:antialiased;min-height:100vh;min-height:100dvh;overflow-x:hidden}
button,input,select,textarea{font:inherit;color:inherit}
button{background:none;border:none;cursor:pointer}
a{color:inherit;text-decoration:none}
body::before{content:'';position:fixed;inset:0;pointer-events:none;z-index:0;background:
  radial-gradient(900px 500px at 12% -8%, rgba(0,217,126,.10), transparent 60%),
  radial-gradient(800px 500px at 88% 4%, rgba(47,128,237,.12), transparent 62%),
  radial-gradient(700px 700px at 50% 110%, rgba(0,217,126,.05), transparent 60%);}
.wrap{width:100%;max-width:1100px;margin:0 auto;padding:0 20px;position:relative;z-index:1}

/* NAV */
.nav{position:sticky;top:0;z-index:60;height:var(--nav-h);background:rgba(7,13,22,.82);backdrop-filter:blur(14px);-webkit-backdrop-filter:blur(14px);border-bottom:1px solid var(--border)}
.nav-inner{height:var(--nav-h);display:flex;align-items:center;justify-content:space-between;gap:16px}
.brand{display:flex;align-items:center;gap:10px;cursor:pointer}
.brand-mark{width:34px;height:34px;border-radius:10px;background:linear-gradient(140deg,var(--primary),var(--accent));display:grid;place-items:center;font-weight:900;font-size:.85rem;color:#04140c;box-shadow:0 4px 14px var(--primary-glow)}
.brand-text{font-weight:900;font-size:1.06rem;letter-spacing:-.03em}
.brand-text span{color:var(--primary)}
.nav-links{display:none;gap:26px;font-size:.88rem;font-weight:600;color:var(--muted)}
.nav-links a{cursor:pointer}
.nav-links a:hover{color:var(--text)}
.nav-links a.active{color:var(--primary)}
@media(min-width:860px){.nav-links{display:flex}}
.nav-user{display:flex;align-items:center;gap:10px;padding:5px 12px 5px 5px;border-radius:var(--radius-full);background:var(--surface);border:1px solid var(--border);cursor:pointer}
.nav-user .avatar{width:30px;height:30px;border-radius:50%;background:linear-gradient(140deg,var(--primary),var(--accent));display:grid;place-items:center;color:#04140c;font-weight:900;font-size:.72rem}
.nav-user .name{font-size:.82rem;font-weight:700}
@media(max-width:520px){.nav-user .name{display:none}}

/* LAYOUT */
.page{padding:32px 0 80px}
.page-head{margin-bottom:26px}
.eyebrow{font-size:.7rem;font-weight:800;letter-spacing:.18em;text-transform:uppercase;color:var(--primary);margin-bottom:6px}
.page-title{font-size:1.8rem;font-weight:900;letter-spacing:-.035em;line-height:1.1}
.page-sub{font-size:.88rem;color:var(--muted);margin-top:6px}

.grid{display:grid;gap:22px;grid-template-columns:1fr}
@media(min-width:980px){.grid{grid-template-columns:1.5fr 1fr;align-items:start}}

/* PANELS */
.panel{background:linear-gradient(180deg,var(--surface),var(--bg-2));border:1px solid var(--border);border-radius:var(--radius-lg);padding:26px}
.panel + .panel{margin-top:18px}
.panel-head{display:flex;align-items:flex-start;justify-content:space-between;gap:14px;margin-bottom:20px}
.panel-head h2{font-size:1rem;font-weight:800;letter-spacing:-.02em}
.panel-head p{font-size:.82rem;color:var(--muted);margin-top:4px;line-height:1.5;max-width:520px}
.panel-head .ico{width:42px;height:42px;min-width:42px;border-radius:12px;background:rgba(0,217,126,.1);border:1px solid rgba(0,217,126,.22);display:grid;place-items:center;font-size:1.1rem}

/* HERO */
.hero{display:flex;flex-wrap:wrap;gap:20px;align-items:center;padding:26px;background:linear-gradient(150deg,var(--surface-3),var(--bg-2));border:1px solid var(--border-2);border-radius:var(--radius-lg);margin-bottom:22px;position:relative;overflow:hidden}
.hero::before{content:'';position:absolute;top:-60px;right:-60px;width:280px;height:280px;background:radial-gradient(circle, rgba(0,217,126,.12), transparent 65%);pointer-events:none}
.hero.admin{background:linear-gradient(150deg, rgba(139,92,246,.1), var(--bg-2));border-color:rgba(139,92,246,.35)}
.hero.admin::before{background:radial-gradient(circle, rgba(139,92,246,.18), transparent 65%)}
.hero-avatar{width:80px;height:80px;border-radius:22px;background:linear-gradient(140deg,var(--primary),var(--accent));display:grid;place-items:center;color:#04140c;font-weight:900;font-size:1.8rem;box-shadow:0 10px 28px rgba(0,217,126,.2);flex-shrink:0}
.hero.admin .hero-avatar{background:linear-gradient(140deg,var(--purple),var(--accent));box-shadow:0 10px 28px rgba(139,92,246,.24)}
.hero-info{flex:1;min-width:0}
.hero-name{font-size:1.4rem;font-weight:900;letter-spacing:-.03em;margin-bottom:2px;overflow:hidden;text-overflow:ellipsis}
.hero-meta{font-size:.85rem;color:var(--muted);overflow:hidden;text-overflow:ellipsis}
.hero-badges{display:flex;gap:8px;flex-wrap:wrap;margin-top:10px}
.badge{display:inline-flex;align-items:center;gap:6px;font-size:.62rem;font-weight:800;letter-spacing:.1em;text-transform:uppercase;padding:5px 10px;border-radius:var(--radius-full)}
.badge-live{background:rgba(0,217,126,.14);color:var(--primary);border:1px solid rgba(0,217,126,.3)}
.badge-warn{background:rgba(255,176,32,.14);color:var(--warn);border:1px solid rgba(255,176,32,.3)}
.badge-blue{background:rgba(47,128,237,.15);color:#7cb4ff;border:1px solid rgba(47,128,237,.3)}
.badge-danger{background:rgba(255,77,94,.14);color:var(--danger);border:1px solid rgba(255,77,94,.3)}
.badge-purple{background:rgba(139,92,246,.15);color:#c4b5fd;border:1px solid rgba(139,92,246,.3)}
.badge i{width:6px;height:6px;border-radius:50%;background:currentColor}

/* FIELDS */
.field{display:flex;flex-direction:column;gap:7px;margin-bottom:16px}
.label{font-size:.82rem;font-weight:700;color:var(--text-2);display:flex;justify-content:space-between;align-items:baseline;gap:8px}
.label .hint{font-size:.74rem;font-weight:600;color:var(--muted-2)}
.input{width:100%;padding:13px 15px;background:var(--bg-2);border:1px solid var(--border-2);border-radius:var(--radius);color:var(--text);font-size:.94rem;outline:none;transition:border-color .15s,box-shadow .15s}
.input::placeholder{color:var(--muted-2)}
.input:focus{border-color:var(--primary);box-shadow:0 0 0 3px var(--primary-glow)}
.input:disabled{opacity:.55;cursor:not-allowed;background:var(--surface)}
.input.invalid{border-color:var(--danger);box-shadow:0 0 0 3px rgba(255,77,94,.15)}

.err{font-size:.78rem;color:var(--danger);display:none;margin-top:-8px;margin-bottom:12px}
.err.show{display:block}

.two-col{display:grid;gap:14px;grid-template-columns:1fr}
@media(min-width:600px){.two-col{grid-template-columns:1fr 1fr}}

/* BUTTONS */
.btn{display:inline-flex;align-items:center;justify-content:center;gap:9px;padding:12px 22px;border-radius:var(--radius-full);font-weight:800;font-size:.9rem;border:1px solid transparent;cursor:pointer;transition:transform .12s,box-shadow .18s,background .18s,opacity .18s;white-space:nowrap}
.btn:active{transform:translateY(1px) scale(.99)}
.btn:disabled{opacity:.55;cursor:not-allowed;transform:none}
.btn-primary{background:linear-gradient(180deg,var(--primary),var(--primary-dark));color:#04140c;box-shadow:0 6px 20px var(--primary-glow)}
.btn-primary:hover:not(:disabled){filter:brightness(1.06)}
.btn-purple{background:linear-gradient(180deg,var(--purple),#6d3ee0);color:#fff;box-shadow:0 6px 20px rgba(139,92,246,.28)}
.btn-purple:hover:not(:disabled){filter:brightness(1.08)}
.btn-ghost{background:var(--surface);color:var(--text);border-color:var(--border-2)}
.btn-ghost:hover:not(:disabled){background:var(--surface-2)}
.btn-outline{background:transparent;color:var(--text);border-color:var(--border-2)}
.btn-outline:hover:not(:disabled){background:rgba(255,255,255,.04)}
.btn-danger{background:var(--danger);color:#fff}
.btn-danger:hover:not(:disabled){background:var(--danger-dark)}
.btn-block{width:100%}
.btn-sm{padding:8px 15px;font-size:.82rem}

/* DETAIL LIST */
.detail-list{display:grid;gap:0}
.detail-row{display:flex;justify-content:space-between;align-items:center;gap:16px;padding:13px 0;border-bottom:1px solid var(--border)}
.detail-row:last-child{border-bottom:none}
.detail-row .k{font-size:.72rem;font-weight:700;letter-spacing:.06em;text-transform:uppercase;color:var(--muted)}
.detail-row .v{font-size:.86rem;color:var(--text-2);font-family:var(--ff-mono);text-align:right;word-break:break-all;max-width:60%}
.detail-row .v.text{font-family:var(--ff)}
.detail-row .v.purple{color:#c4b5fd;font-family:var(--ff);font-weight:800}

/* TRUST */
.trust-wrap{margin-top:16px}
.trust-row{display:flex;justify-content:space-between;align-items:center;margin-bottom:8px}
.trust-label{font-size:.72rem;font-weight:800;letter-spacing:.08em;text-transform:uppercase;color:var(--muted)}
.trust-val{font-family:var(--ff-mono);font-weight:800;font-size:.92rem}
.trust-val.good{color:var(--primary)}
.trust-val.mid{color:var(--warn)}
.trust-val.bad{color:var(--danger)}
.trust-bar{height:6px;border-radius:3px;background:var(--border);overflow:hidden}
.trust-bar i{display:block;height:100%;background:linear-gradient(90deg,var(--primary),#5ce0ff);transition:width .4s ease}
.trust-bar.mid i{background:linear-gradient(90deg,var(--warn),#ffd08a)}
.trust-bar.bad i{background:linear-gradient(90deg,var(--danger),#ff97a4)}

/* CALL-OUTS */
.callout{display:flex;gap:12px;align-items:flex-start;padding:14px 16px;border-radius:var(--radius);font-size:.82rem;line-height:1.5;margin-top:16px}
.callout.warn{background:rgba(255,176,32,.07);border:1px solid rgba(255,176,32,.24);color:#ffd08a}
.callout.info{background:rgba(47,128,237,.07);border:1px solid rgba(47,128,237,.24);color:#9cc4ff}
.callout.admin{background:rgba(139,92,246,.07);border:1px solid rgba(139,92,246,.24);color:#c4b5fd}
.callout b{font-weight:800}
.callout .ico{font-size:1.05rem;flex-shrink:0}
.callout .actions{margin-top:8px;display:flex;gap:8px;flex-wrap:wrap}
.callout button{color:inherit;font-weight:800;font-size:.78rem;text-decoration:underline}

/* DANGER ZONE */
.danger-zone{border-color:rgba(255,77,94,.3);background:linear-gradient(180deg, rgba(255,77,94,.03), var(--bg-2))}
.danger-zone .panel-head h2{color:var(--danger)}

/* NOTICE */
.notice{display:flex;gap:12px;padding:13px 15px;border-radius:var(--radius);font-size:.83rem;line-height:1.55;margin-bottom:16px}
.notice.info{background:rgba(47,128,237,.08);border:1px solid rgba(47,128,237,.28);color:#9cc4ff}
.notice.warn{background:rgba(255,176,32,.09);border:1px solid rgba(255,176,32,.28);color:#ffd08a}
.notice.ok{background:rgba(0,217,126,.09);border:1px solid rgba(0,217,126,.28);color:#6ee7b0}
.notice.danger{background:rgba(255,77,94,.09);border:1px solid rgba(255,77,94,.28);color:#ff97a4}
.notice .ico{font-size:1rem;line-height:1.3;flex-shrink:0}
.notice b{font-weight:800}

/* FOOTER */
footer{border-top:1px solid var(--border);margin-top:40px;padding:26px 0 40px}
.foot-inner{display:flex;flex-wrap:wrap;gap:16px;justify-content:space-between;align-items:center;font-size:.8rem;color:var(--muted-2)}
.foot-links{display:flex;flex-wrap:wrap;gap:20px}
.foot-links a:hover{color:var(--text)}

/* TOASTS */
#toasts{position:fixed;bottom:20px;left:50%;transform:translateX(-50%);z-index:400;display:flex;flex-direction:column;gap:9px;width:calc(100% - 32px);max-width:400px;pointer-events:none}
.toast{display:flex;align-items:flex-start;gap:11px;padding:13px 15px;border-radius:var(--radius-sm);background:var(--surface-2);border:1px solid var(--border-2);box-shadow:var(--shadow);font-size:.86rem;animation:toastIn .28s cubic-bezier(.2,.9,.3,1.2);pointer-events:auto}
.toast.out{animation:toastOut .22s forwards}
.toast.ok{border-color:rgba(0,217,126,.4);background:linear-gradient(180deg,#0f2a1e,#0b1d15)}
.toast.err{border-color:rgba(255,77,94,.4);background:linear-gradient(180deg,#2a1015,#1d0b0e)}
.toast.info{border-color:rgba(47,128,237,.4);background:linear-gradient(180deg,#0f1f33,#0b1622)}
@keyframes toastIn{from{opacity:0;transform:translateY(16px) scale(.96)}to{opacity:1;transform:none}}
@keyframes toastOut{to{opacity:0;transform:translateY(10px) scale(.97)}}

/* LOADING */
.loading{padding:56px 22px;text-align:center;color:var(--muted);font-size:.9rem}
.spin{width:18px;height:18px;border-radius:50%;border:2px solid rgba(0,217,126,.25);border-top-color:var(--primary);animation:spin .7s linear infinite;display:inline-block;vertical-align:middle;margin-right:8px}
@keyframes spin{to{transform:rotate(360deg)}}
::selection{background:var(--primary);color:#04140c}
</style>
</head>

<body>

<nav class="nav">
  <div class="wrap nav-inner">
    <div class="brand" onclick="location.href='dashboard.html'">
      <div class="brand-mark">DLS</div>
      <div class="brand-text">DLS<span>Stake</span></div>
    </div>
    <div class="nav-links">
      <a href="dashboard.html">Dashboard</a>
      <a href="lobby.html">Lobby</a>
      <a href="create-match.html">Create</a>
      <a href="wallet.html">Wallet</a>
      <a href="profile.html" class="active">Profile</a>
    </div>
    <div class="nav-user" onclick="location.href='profile.html'">
      <div class="avatar" id="navAvatar">?</div>
      <span class="name" id="navName">…</span>
    </div>
  </div>
</nav>

<main class="wrap page">
  <div class="page-head">
    <div class="eyebrow">Account</div>
    <h1 class="page-title">Profile &amp; settings</h1>
    <div class="page-sub">Manage your identity, security, and preferences.</div>
  </div>

  <div id="loading" class="loading"><span class="spin"></span> Loading profile…</div>

  <div id="content" style="display:none">

    <!-- HERO -->
    <div class="hero" id="hero">
      <div class="hero-avatar" id="heroAvatar">?</div>
      <div class="hero-info">
        <div class="hero-name" id="heroName">…</div>
        <div class="hero-meta" id="heroMeta">—</div>
        <div class="hero-badges" id="heroBadges"></div>
      </div>
      <button class="btn btn-outline btn-sm" onclick="Auth.signOut()">Sign out</button>
    </div>

    <!-- ADMIN QUICK PANEL -->
    <div id="adminPanel" style="display:none;margin-bottom:22px"></div>

    <div class="grid">

      <!-- LEFT COLUMN -->
      <section>

        <!-- IDENTITY -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">👤</div>
            <div style="flex:1">
              <h2>Account information</h2>
              <p>Your username is visible to other players. Your DLS username is what they'll add in Dream League Soccer.</p>
            </div>
          </div>

          <div id="identityAlert"></div>

          <form id="identityForm" novalidate>
            <div class="field">
              <label class="label" for="pUsername">
                <span>Username</span>
                <span class="hint">3–20 chars · letters, numbers, underscores</span>
              </label>
              <input class="input" type="text" id="pUsername" autocomplete="username" autocapitalize="off" spellcheck="false" />
              <div class="err" id="pUsernameErr"></div>
            </div>

            <div class="field">
              <label class="label" for="pDls">
                <span>Dream League Soccer username</span>
                <span class="hint">Must match your DLS profile</span>
              </label>
              <input class="input" type="text" id="pDls" autocomplete="off" autocapitalize="off" spellcheck="false" />
              <div class="err" id="pDlsErr"></div>
            </div>

            <div class="field">
              <label class="label" for="pEmail">
                <span>Email address</span>
                <span class="hint">Cannot be changed here</span>
              </label>
              <input class="input" type="email" id="pEmail" disabled />
            </div>

            <button type="submit" class="btn btn-primary btn-block" id="saveIdentityBtn">
              Save changes
            </button>
          </form>
        </div>

        <!-- SECURITY -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">🔐</div>
            <div style="flex:1">
              <h2>Security</h2>
              <p>Change your password. We recommend updating it every few months.</p>
            </div>
          </div>

          <div id="securityAlert"></div>

          <form id="passwordForm" novalidate>
            <div class="field">
              <label class="label" for="pCurrentPw">Current password</label>
              <input class="input" type="password" id="pCurrentPw" autocomplete="current-password" placeholder="••••••••" />
              <div class="err" id="pCurrentPwErr"></div>
            </div>

            <div class="two-col">
              <div class="field">
                <label class="label" for="pNewPw">New password</label>
                <input class="input" type="password" id="pNewPw" autocomplete="new-password" placeholder="Min 8 characters" />
                <div class="err" id="pNewPwErr"></div>
              </div>
              <div class="field">
                <label class="label" for="pConfirmPw">Confirm new password</label>
                <input class="input" type="password" id="pConfirmPw" autocomplete="new-password" placeholder="Re-enter new password" />
                <div class="err" id="pConfirmPwErr"></div>
              </div>
            </div>

            <button type="submit" class="btn btn-primary btn-block" id="savePwBtn">
              Update password
            </button>
          </form>
        </div>

        <!-- DANGER ZONE -->
        <div class="panel danger-zone" id="dangerPanel">
          <div class="panel-head">
            <div class="ico" style="background:rgba(255,77,94,.1);border-color:rgba(255,77,94,.22)">⚠️</div>
            <div style="flex:1">
              <h2>Danger zone</h2>
              <p>Permanently request deletion of your account. All history will be anonymized.</p>
            </div>
          </div>

          <div class="notice danger">
            <span class="ico">⚠</span>
            <div>
              <b>This cannot be undone.</b> You must have ₦0 balance and ₦0 in escrow before deletion can be requested.
            </div>
          </div>

          <button class="btn btn-danger btn-block" id="deleteBtn" onclick="Profile.confirmDelete()">
            Request account deletion
          </button>
        </div>

      </section>

      <!-- RIGHT COLUMN -->
      <aside>

        <!-- STATS -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">📊</div>
            <div style="flex:1">
              <h2>Your record</h2>
              <p>All-time stats.</p>
            </div>
          </div>

          <div class="detail-list">
            <div class="detail-row"><span class="k">Matches</span><span class="v" id="sPlayed">0</span></div>
            <div class="detail-row"><span class="k">Wins</span><span class="v" id="sWon">0</span></div>
            <div class="detail-row"><span class="k">Win rate</span><span class="v" id="sWinRate">—</span></div>
            <div class="detail-row"><span class="k">Balance</span><span class="v" id="sBalance">₦0.00</span></div>
            <div class="detail-row"><span class="k">In escrow</span><span class="v" id="sEscrow">₦0.00</span></div>
            <div class="detail-row"><span class="k">Role</span><span class="v text" id="sRole">Player</span></div>
            <div class="detail-row"><span class="k">Member since</span><span class="v text" id="sJoined">—</span></div>
          </div>

          <div class="trust-wrap">
            <div class="trust-row">
              <span class="trust-label">Trust score</span>
              <span class="trust-val good" id="trustVal">100</span>
            </div>
            <div class="trust-bar" id="trustBar"><i style="width:100%"></i></div>
          </div>
        </div>

        <!-- KYC -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">🪪</div>
            <div style="flex:1">
              <h2>Identity</h2>
              <p>Required to withdraw.</p>
            </div>
          </div>

          <div id="kycSummary"></div>
        </div>

        <!-- BANK -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">🏦</div>
            <div style="flex:1">
              <h2>Bank account</h2>
              <p>Where we send your withdrawals.</p>
            </div>
          </div>

          <div id="bankSummary"></div>

          <button class="btn btn-ghost btn-block" style="margin-top:14px" onclick="location.href='kyc.html'">
            Update bank details
          </button>
        </div>

        <!-- QUICK LINKS -->
        <div class="panel">
          <div class="panel-head">
            <div class="ico">🔗</div>
            <div style="flex:1">
              <h2>Quick links</h2>
            </div>
          </div>

          <div style="display:grid;gap:10px">
            <button class="btn btn-ghost btn-block" onclick="location.href='wallet.html'">Wallet &amp; deposits</button>
            <button class="btn btn-ghost btn-block" onclick="location.href='dashboard.html'">Dashboard</button>
            <button class="btn btn-ghost btn-block" onclick="location.href='lobby.html'">Match lobby</button>
          </div>
        </div>

      </aside>
    </div>

    <footer>
      <div class="foot-inner">
        <div>© 2026 DLS Stake. Not affiliated with First Touch Games Ltd.</div>
        <div class="foot-links">
          <a href="dashboard.html">Dashboard</a>
          <a href="lobby.html">Lobby</a>
          <a href="create-match.html">Create</a>
          <a href="wallet.html">Wallet</a>
        </div>
      </div>
    </footer>
  </div>
</main>

<div id="toasts"></div>

<script src="https://cdn.jsdelivr.net/npm/@supabase/supabase-js@2.45.4/dist/umd/supabase.js"></script>

<script>
/* ============================================================================
   CONFIG
   ============================================================================ */
const CONFIG = {
  SUPABASE_URL:      'https://nnoymzdynrlpyxlrbqqn.supabase.co',
  SUPABASE_ANON_KEY: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5ub3ltemR5bnJscHl4bHJicXFuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODk2MzAzMzMsImV4cCI6MjEwNTIwNjMzM30.4Z7fcWjfskVeVKdZF779LsQmWsFKpu-9Qq7CGISso0M',
  LOGIN_PAGE:        'login.html',
  CURRENCY:          '₦',
  DEBUG:             true
};

const $ = (s) => document.querySelector(s);
const log  = (...a) => { if (CONFIG.DEBUG) console.log('[DLS]', ...a); };
const warn = (...a) => console.warn('[DLS]', ...a);
const err  = (...a) => console.error('[DLS]', ...a);

const UI = {
  toast(msg, type='info', ms=4200){
    const el = document.createElement('div');
    el.className = `toast ${type}`;
    const icon = type==='ok' ? '✓' : type==='err' ? '✕' : 'ℹ';
    el.innerHTML = `<span style="font-weight:800">${icon}</span><span>${msg}</span>`;
    $('#toasts').appendChild(el);
    setTimeout(()=>{ el.classList.add('out'); setTimeout(()=>el.remove(),240); }, ms);
  },
  escape(s){ const d=document.createElement('div'); d.textContent=s??''; return d.innerHTML; },
  initials(n){ if(!n) return '?'; return n.trim().split(/\s+/).slice(0,2).map(w=>w[0]).join('').toUpperCase(); },
  money(n){ return CONFIG.CURRENCY + Number(n||0).toLocaleString('en-NG',{minimumFractionDigits:2,maximumFractionDigits:2}); },
  date(iso){ if(!iso) return '—'; try { return new Date(iso).toLocaleDateString('en-NG',{year:'numeric',month:'short',day:'numeric'}); } catch { return '—'; } },
  fieldError(inputId, message){
    const input = document.getElementById(inputId);
    const errEl = document.getElementById(inputId + 'Err');
    if (message){
      if (input) input.classList.add('invalid');
      if (errEl){ errEl.textContent = message; errEl.classList.add('show'); }
    } else {
      if (input) input.classList.remove('invalid');
      if (errEl){ errEl.textContent = ''; errEl.classList.remove('show'); }
    }
  },
  alert(containerId, message, type='info'){
    const el = document.getElementById(containerId);
    if (!el) return;
    if (!message){ el.innerHTML = ''; return; }
    const icon = type === 'warn' ? '⚠' : type === 'ok' ? '✓' : type === 'danger' ? '⚠' : 'ℹ';
    el.innerHTML = `<div class="notice ${type}"><span class="ico">${icon}</span><div>${message}</div></div>`;
  },
  busy(btnId, isBusy, label='Please wait…'){
    const btn = document.getElementById(btnId);
    if (!btn) return;
    if (isBusy){
      btn.dataset.label = btn.innerHTML;
      btn.disabled = true;
      btn.innerHTML = `<span class="spin"></span> ${label}`;
    } else {
      btn.disabled = false;
      btn.innerHTML = btn.dataset.label || btn.innerHTML;
    }
  },
  roleLabel(role){
    if (!role) return 'Player';
    const map = {
      'player':      'Player',
      'arbiter':     'Arbiter',
      'admin':       'Admin',
      'super_admin': 'Super Admin'
    };
    return map[role] || role;
  }
};

/* ============================================================================
   SUPABASE
   ============================================================================ */
const Supa = (() => {
  const HAS = Boolean(
    CONFIG.SUPABASE_URL && CONFIG.SUPABASE_ANON_KEY &&
    window.supabase && typeof window.supabase.createClient === 'function'
  );
  let client = null;
  if (HAS){
    try {
      client = window.supabase.createClient(CONFIG.SUPABASE_URL, CONFIG.SUPABASE_ANON_KEY, {
        auth:{ persistSession:true, autoRefreshToken:true, detectSessionInUrl:true, storageKey:'dls_stake_auth' }
      });
      log('Supabase ready');
    } catch(e){ err('client fail:', e); }
  } else warn('No Supabase config — DEMO MODE');
  return { client, HAS };
})();

/* ============================================================================
   STATE
   ============================================================================ */
const State = {
  session: null,
  profile: null,
  busy: false
};

/* ============================================================================
   AUTH
   ============================================================================ */
const Auth = {
  async getSession(){
    if (!Supa.HAS){
      try { const raw = localStorage.getItem('dls_demo_session'); return raw ? { data:{ session: JSON.parse(raw) } } : { data:{ session:null } }; }
      catch { return { data:{ session:null } }; }
    }
    try { const { data } = await Supa.client.auth.getSession(); return { data: data || { session:null } }; }
    catch(e){ err('getSession:', e); return { data:{ session:null } }; }
  },
  async signOut(){
    try {
      if (!Supa.HAS) localStorage.removeItem('dls_demo_session');
      else await Supa.client.auth.signOut();
    } catch(e){ err('signOut:', e); }
    UI.toast('Signed out.', 'ok');
    setTimeout(()=>location.href = CONFIG.LOGIN_PAGE, 400);
  }
};

/* ============================================================================
   PROFILE
   ============================================================================ */
const Profile = {

  async init(){
    log('Profile init');

    const { data } = await Auth.getSession();
    State.session = data.session;
    if (!State.session?.user){
      UI.toast('Please sign in first.', 'err');
      setTimeout(()=>location.href = CONFIG.LOGIN_PAGE, 600);
      return;
    }

    await this.reload();
    this.wireIdentityForm();
    this.wirePasswordForm();
  },

  async reload(){
    try {
      let profile = null;
      if (!Supa.HAS){
        const users = JSON.parse(localStorage.getItem('dls_demo_users') || '[]');
        profile = users.find(u => u.id === State.session.user.id) || null;
      } else {
        const { data, error } = await Supa.client.rpc('get_profile_summary');
        if (error){ warn('summary error:', error.message); }
        if (data && data.profile){
          profile = data.profile;
        } else {
          const { data: p } = await Supa.client.from('profiles').select('*').eq('id', State.session.user.id).maybeSingle();
          profile = p;
        }
      }
      State.profile = profile;
      $('#loading').style.display = 'none';
      $('#content').style.display = 'block';
      this.render();
    } catch(e){
      err('reload threw:', e);
      UI.toast('Failed to load profile.', 'err');
    }
  },

  render(){
    const u = State.session?.user;
    const p = State.profile || {};

    const username = p.username || u?.user_metadata?.username || u?.email?.split('@')[0] || 'Player';
    const dls      = p.dls_username || '—';
    const email    = u?.email || '—';
    const kyc      = p.kyc_status || 'pending';
    const balance  = Number(p.balance || 0);
    const escrow   = Number(p.in_escrow || 0);
    const played   = Number(p.matches_played || 0);
    const won      = Number(p.matches_won || 0);
    const trust    = Number(p.trust_score ?? 100);
    const frozen   = Boolean(p.frozen);
    const isAdmin  = Boolean(p.is_admin);
    const role     = p.role || 'player';
    const roleLabel = UI.roleLabel(role);
    const joined   = p.created_at || u?.created_at;
    const bank     = p.bank_details;
    const delReq   = Boolean(p.deletion_requested);

    /* NAV */
    const na = $('#navAvatar'); if (na) na.textContent = UI.initials(username);
    const nn = $('#navName');   if (nn) nn.textContent = username;

    /* HERO */
    const hero = $('#hero');
    if (hero) hero.classList.toggle('admin', isAdmin);

    const ha = $('#heroAvatar'); if (ha) ha.textContent = UI.initials(username);
    const hn = $('#heroName');   if (hn) hn.textContent = username;
    const hm = $('#heroMeta');   if (hm) hm.textContent = email;

    const hb = $('#heroBadges');
    if (hb){
      const kycBadge = kyc === 'verified'
        ? '<span class="badge badge-live"><i></i> KYC Verified</span>'
        : `<span class="badge badge-warn"><i></i> KYC ${kyc.charAt(0).toUpperCase()+kyc.slice(1)}</span>`;
      const adminBadge = isAdmin ? `<span class="badge badge-purple"><i></i> ${roleLabel}</span>` : '';
      const frozenBadge = frozen ? '<span class="badge badge-danger"><i></i> Frozen</span>' : '';
      const delBadge = delReq ? '<span class="badge badge-danger"><i></i> Deletion Pending</span>' : '';
      const modeBadge = Supa.HAS
        ? '<span class="badge badge-blue"><i></i> Supabase</span>'
        : '<span class="badge badge-blue"><i></i> Demo</span>';
      hb.innerHTML = kycBadge + adminBadge + frozenBadge + delBadge + modeBadge;
    }

    /* ADMIN PANEL */
    const ap = $('#adminPanel');
    if (ap){
      if (isAdmin){
        ap.innerHTML = `
          <div class="callout admin" style="margin-top:0">
            <span class="ico">⚙️</span>
            <div style="flex:1">
              <b>You have administrative access.</b><br />
              Manage KYC submissions, disputed matches, withdrawals, and monitor platform revenue.
              <div class="actions">
                <button onclick="location.href='admin.html'">Open admin console →</button>
              </div>
            </div>
            <button class="btn btn-purple btn-sm" onclick="location.href='admin.html'">Open →</button>
          </div>`;
      } else {
        ap.innerHTML = '';
      }
    }

    /* IDENTITY FORM */
    const pu = $('#pUsername'); if (pu) pu.value = username;
    const pd = $('#pDls');      if (pd) pd.value = dls === '—' ? '' : dls;
    const pe = $('#pEmail');    if (pe) pe.value = email;

    /* STATS */
    const set = (id, v) => { const el = document.getElementById(id); if (el) el.textContent = v; };
    set('sPlayed', played);
    set('sWon', won);
    set('sWinRate', played > 0 ? Math.round((won/played)*100) + '%' : '—');
    set('sBalance', UI.money(balance));
    set('sEscrow',  UI.money(escrow));
    set('sRole',    roleLabel);
    set('sJoined',  UI.date(joined));

    const roleEl = $('#sRole');
    if (roleEl) roleEl.className = 'v ' + (isAdmin ? 'purple' : 'text');

    /* TRUST */
    const tv = $('#trustVal'), tb = $('#trustBar');
    if (tv && tb){
      tv.textContent = String(trust);
      const cls = trust >= 80 ? 'good' : trust >= 50 ? 'mid' : 'bad';
      tv.className = 'trust-val ' + cls;
      tb.className = 'trust-bar' + (trust < 80 ? ' ' + cls : '');
      tb.innerHTML = `<i style="width:${Math.min(100,trust)}%"></i>`;
    }

    /* KYC SUMMARY */
    const kycEl = $('#kycSummary');
    if (kycEl){
      if (kyc === 'verified'){
        kycEl.innerHTML = `
          <div class="notice ok" style="margin-bottom:12px"><span class="ico">✓</span><div>Your identity is verified. Withdrawals are unlocked.</div></div>
          <button class="btn btn-ghost btn-block" onclick="location.href='kyc.html'">View verification</button>`;
      } else if (kyc === 'rejected'){
        kycEl.innerHTML = `
          <div class="notice danger" style="margin-bottom:12px"><span class="ico">⚠</span><div>Your last submission was rejected. Please re-submit.</div></div>
          <button class="btn btn-primary btn-block" onclick="location.href='kyc.html'">Re-submit documents</button>`;
      } else {
        kycEl.innerHTML = `
          <div class="notice warn" style="margin-bottom:12px"><span class="ico">⏳</span><div>Verification required before you can withdraw winnings.</div></div>
          <button class="btn btn-primary btn-block" onclick="location.href='kyc.html'">Verify identity</button>`;
      }
    }

    /* BANK SUMMARY */
    const bankEl = $('#bankSummary');
    if (bankEl){
      if (bank){
        bankEl.innerHTML = `
          <div class="detail-list">
            <div class="detail-row"><span class="k">Bank</span><span class="v text">${UI.escape(bank.bank_name||'—')}</span></div>
            <div class="detail-row"><span class="k">Account</span><span class="v">${UI.escape(bank.account_number||'—')}</span></div>
            <div class="detail-row"><span class="k">Name</span><span class="v text">${UI.escape(bank.account_name||'—')}</span></div>
          </div>`;
      } else {
        bankEl.innerHTML = `
          <div class="notice warn" style="margin-bottom:12px"><span class="ico">⚠</span><div>No bank account on file yet. You'll be asked when you first withdraw.</div></div>`;
      }
    }

    /* DANGER ZONE */
    const delBtn = $('#deleteBtn');
    if (delBtn){
      if (delReq){
        delBtn.disabled = true;
        delBtn.textContent = 'Deletion request pending review';
      } else if (balance > 0 || escrow > 0){
        delBtn.disabled = true;
        delBtn.textContent = 'Withdraw all funds first';
      } else {
        delBtn.disabled = false;
        delBtn.textContent = 'Request account deletion';
      }
    }
  },

  wireIdentityForm(){
    ['pUsername','pDls'].forEach(id => {
      const el = document.getElementById(id);
      if (el) el.addEventListener('input', () => UI.fieldError(id, null));
    });
    $('#identityForm').addEventListener('submit', (e) => {
      e.preventDefault();
      this.saveIdentity();
    });
  },

  async saveIdentity(){
    if (State.busy) return;
    UI.alert('identityAlert', '');
    ['pUsername','pDls'].forEach(id => UI.fieldError(id, null));

    const username = $('#pUsername').value.trim();
    const dls      = $('#pDls').value.trim();

    let ok = true;
    if (!username || username.length < 3){ UI.fieldError('pUsername', 'At least 3 characters.'); ok = false; }
    if (username.length > 20){ UI.fieldError('pUsername', 'Max 20 characters.'); ok = false; }
    if (!/^[a-zA-Z0-9_]+$/.test(username)){ UI.fieldError('pUsername', 'Letters, numbers, underscores only.'); ok = false; }
    if (!dls || dls.length < 3){ UI.fieldError('pDls', 'DLS username required.'); ok = false; }
    if (!ok) return;

    State.busy = true;
    UI.busy('saveIdentityBtn', true, 'Saving…');

    try {
      if (!Supa.HAS){
        const users = JSON.parse(localStorage.getItem('dls_demo_users') || '[]');
        const u = users.find(x => x.id === State.session.user.id);
        if (u){ u.username = username; u.dls_username = dls; }
        localStorage.setItem('dls_demo_users', JSON.stringify(users));
      } else {
        const { error } = await Supa.client.rpc('update_profile', {
          p_username: username,
          p_dls_username: dls
        });
        if (error) throw error;
      }
      UI.toast('Profile updated.', 'ok');
      UI.alert('identityAlert', 'Changes saved.', 'ok');
      await this.reload();
    } catch(e){
      const msg = e.message || 'Could not save.';
      UI.alert('identityAlert', UI.escape(msg), 'warn');
      UI.toast(msg, 'err');
    } finally {
      UI.busy('saveIdentityBtn', false);
      State.busy = false;
    }
  },

  wirePasswordForm(){
    ['pCurrentPw','pNewPw','pConfirmPw'].forEach(id => {
      const el = document.getElementById(id);
      if (el) el.addEventListener('input', () => UI.fieldError(id, null));
    });
    $('#passwordForm').addEventListener('submit', (e) => {
      e.preventDefault();
      this.changePassword();
    });
  },

  async changePassword(){
    if (State.busy) return;
    UI.alert('securityAlert', '');
    ['pCurrentPw','pNewPw','pConfirmPw'].forEach(id => UI.fieldError(id, null));

    const cur = $('#pCurrentPw').value;
    const nw  = $('#pNewPw').value;
    const cnf = $('#pConfirmPw').value;

    let ok = true;
    if (!cur){ UI.fieldError('pCurrentPw', 'Enter your current password.'); ok = false; }
    if (!nw || nw.length < 8){ UI.fieldError('pNewPw', 'Min 8 characters.'); ok = false; }
    if (!/[A-Za-z]/.test(nw)){ UI.fieldError('pNewPw', 'Must contain a letter.'); ok = false; }
    if (!/[0-9]/.test(nw)){ UI.fieldError('pNewPw', 'Must contain a number.'); ok = false; }
    if (nw !== cnf){ UI.fieldError('pConfirmPw', 'Passwords do not match.'); ok = false; }
    if (nw === cur){ UI.fieldError('pNewPw', 'New password must be different.'); ok = false; }
    if (!ok) return;

    if (!Supa.HAS){
      UI.toast('Demo mode — password change not available.', 'info');
      return;
    }

    State.busy = true;
    UI.busy('savePwBtn', true, 'Updating…');

    try {
      const email = State.session.user.email;
      const { error: verifyErr } = await Supa.client.auth.signInWithPassword({ email, password: cur });
      if (verifyErr) throw new Error('Current password is incorrect.');

      const { error: updErr } = await Supa.client.auth.updateUser({ password: nw });
      if (updErr) throw updErr;

      try {
        await Supa.client.from('profiles')
          .update({ password_changed_at: new Date().toISOString() })
          .eq('id', State.session.user.id);
      } catch {}

      UI.toast('Password updated.', 'ok');
      UI.alert('securityAlert', 'Password changed successfully.', 'ok');
      $('#passwordForm').reset();
    } catch(e){
      const msg = e.message || 'Could not update password.';
      UI.alert('securityAlert', UI.escape(msg), 'warn');
      UI.toast(msg, 'err');
    } finally {
      UI.busy('savePwBtn', false);
      State.busy = false;
    }
  },

  async confirmDelete(){
    const p = State.profile || {};
    const balance = Number(p.balance || 0);
    const escrow  = Number(p.in_escrow || 0);

    if (balance > 0 || escrow > 0){
      UI.toast('Withdraw all funds first.', 'err');
      return;
    }

    const reason = prompt(
      'Are you sure you want to delete your account?\n\n' +
      'This will be reviewed by our team within 24 hours. You can reply with a reason or cancel.'
    );
    if (reason === null) return;

    const confirmText = prompt('Type DELETE (all caps) to confirm:');
    if (confirmText !== 'DELETE'){
      UI.toast('Cancelled.', 'info');
      return;
    }

    try {
      if (Supa.HAS){
        const { error } = await Supa.client.rpc('request_account_deletion', { p_reason: reason || null });
        if (error) throw error;
      } else {
        const users = JSON.parse(localStorage.getItem('dls_demo_users') || '[]');
        const u = users.find(x => x.id === State.session.user.id);
        if (u){ u.deletion_requested = true; u.deletion_reason = reason; }
        localStorage.setItem('dls_demo_users', JSON.stringify(users));
      }
      UI.toast('Deletion request submitted.', 'ok');
      await this.reload();
    } catch(e){
      UI.toast(e.message || 'Could not submit.', 'err');
    }
  }
};

/* ============================================================================
   BOOT
   ============================================================================ */
(async function boot(){
  log('Profile boot');
  if (!Supa.HAS){
    console.info('%cDLS Stake — Profile (DEMO)',
      'background:#00d97e;color:#04140c;font-weight:800;padding:2px 6px;border-radius:4px');
  } else {
    console.info('%cDLS Stake — Profile (Supabase)',
      'background:#2f80ed;color:#fff;font-weight:800;padding:2px 6px;border-radius:4px');
  }
  try { await Profile.init(); }
  catch(e){ err('Profile init failed:', e); UI.toast('Failed to load profile.', 'err'); }
})();

window.DLS = {
  version: 'profile-2.0.0',
  async debug(){
    console.log('======== DLS Profile v2 ========');
    console.log('Session:', State.session?.user?.email);
    console.log('Profile:', State.profile);
    console.log('Is admin:', State.profile?.is_admin);
    console.log('Role:', State.profile?.role);
    console.log('================================');
  }
};
</script>
</body>
</html>
