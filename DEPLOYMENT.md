# Deployment Plan

Production target:

- Source repository: `https://github.com/ResonanceAdmin/resonancecoherence.org`
- Hosting: AWS S3 + CloudFront
- Domain: `resonancecoherence.org`
- Redirect: `www.resonancecoherence.org` to `https://resonancecoherence.org/`
- DNS provider: Cloudflare
- Certificate: AWS Certificate Manager in `us-east-1`, covering both `resonancecoherence.org` and `www.resonancecoherence.org`

## Required access before deploy

The local build is ready, but deployment requires authenticated access not stored in this workspace:

- GitHub access able to create `ResonanceAdmin/resonancecoherence.org`
- AWS CLI or AWS Console access with permissions for S3, CloudFront, ACM, and optionally Route 53-style validation records
- Cloudflare DNS access for `resonancecoherence.org`

## AWS shape

Recommended resources:

- S3 bucket for root site content: `resonancecoherence.org`
- Optional S3 bucket for www redirect: `www.resonancecoherence.org`
- CloudFront distribution with aliases:
  - `resonancecoherence.org`
  - `www.resonancecoherence.org`
- Viewer protocol policy: redirect HTTP to HTTPS
- Default root object: `index.html`
- Custom error responses:
  - 403 -> `/index.html` or `/404.html` if a static 404 page is added later
  - 404 -> `/index.html` or `/404.html` if a static 404 page is added later

## Deploy command once AWS is configured

From this directory:

```powershell
aws s3 sync . s3://resonancecoherence.org `
  --delete `
  --exclude ".git/*" `
  --exclude ".gitignore" `
  --exclude "DEPLOYMENT.md" `
  --exclude "resonancecoherence-org-build-brief.md" `
  --exclude "launch_resonance_org_site.bat"
```

Then invalidate CloudFront:

```powershell
aws cloudfront create-invalidation --distribution-id <DISTRIBUTION_ID> --paths "/*"
```

## Verify

- `https://resonancecoherence.org/`
- `https://www.resonancecoherence.org/` redirects to root
- `https://resonancecoherence.org/llms.txt`
- `https://resonancecoherence.org/sitemap.xml`
- `https://resonancecoherence.org/robots.txt`
- all seven HTML pages
- Research DOI/PDF/Markdown links
- JSON-LD `sameAs` on the home page
