# CarLink — Legal

The canonical source for CarLink's user-facing legal documents.

  - [Community Guidelines](./community-guidelines.md) — what is and
    isn't acceptable on the platform, plus enforcement.
  - [Terms of Service](./terms-of-service.md) — the contract between
    each user and CarLink HQ LLC.
  - [Privacy Policy](./privacy-policy.md) — what data we collect,
    how we use it, and your rights.

All three documents are owned and operated by **CarLink HQ LLC** and
written for the consumer-facing CarLink mobile app + web service.

## Versioning

Each document is versioned by its Effective Date, listed at the top
of the file. When a material change is made:

  1. Bump the **Effective Date** and **Last Updated** lines at the top
     of the affected file.
  2. Add a row to `CHANGELOG.md` (one line per release) describing
     the change.
  3. Re-run the Supabase seed (see below) so the in-app legal viewer
     surfaces the new version.
  4. Notify users at least 30 days before the new version takes effect
     for the Terms of Service and Privacy Policy. Community Guidelines
     updates are notified in-app at the time of change.

## Supabase publication

These Markdown files are the source of truth on disk. The iOS / web
clients render them through a `public.legal_documents` table in
Supabase so users always see the latest version inside Settings →
Legal without an app update.

The table schema, RLS, and seed migration live in the
`supabase_legal_documents.sql` migration applied to the project.

## Disclaimers

These documents are working drafts authored by CarLink HQ LLC. Before
relying on them for production legal protection, have them reviewed by
a licensed attorney in the relevant jurisdictions (notably California
for the entity, plus any region you operate in for privacy compliance).

## Contact

  - **General:** support@carlinkhq.com
  - **Legal:** legal@carlinkhq.com
  - **Privacy:** privacy@carlinkhq.com
  - **Copyright / DMCA:** dmca@carlinkhq.com
