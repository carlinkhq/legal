# Legal Document Changelog

Tracks material changes to the Community Guidelines, Terms of Service,
and Privacy Policy. Most-recent version on top.

## 2026-07-25 — v1.4 published

  - **v1.4 pushed to Supabase `legal_documents`** (privacy policy +
    terms of service) — the June 17 cut is now live on carlinkhq.com
    and in the iOS legal viewer. The site had been serving privacy
    v1.2 since May 14.
  - **Working-draft footer removed** from the published Privacy
    Policy and Terms of Service (non-material; the internal
    attorney-review recommendation lives in README.md, not in the
    user-facing documents).
  - **Header dates normalized** — Privacy "Last Updated" and the
    Terms Effective/Last Updated lines now read June 17, 2026,
    matching the v1.4 cut they contain.

## 2026-06-17 — v1.4

  - **Date of birth collection disclosed.** The CarLink iOS app now
    collects the user's date of birth at signup to verify the 13+
    minimum age requirement (build 29 ships the COPPA gate end-to-
    end: iOS UI, Swift validation, server-side trigger). Both legal
    documents have been updated to reflect this:
      - **Privacy Policy § 2.1** — added "date of birth" to the
        Account Information bullet, plus a dedicated sub-bullet
        explaining the purpose, storage, and visibility constraints
        (DOB is never shown to other users, never used for targeted
        advertising).
      - **Privacy Policy § 10 (Children's Privacy)** — rewrote the
        section to explain HOW age is enforced (iOS UI gate + Swift
        validation + server trigger), and to note that pre-build-29
        accounts will be required to confirm DOB on next launch.
      - **Terms of Service § 2 (Eligibility)** — added a paragraph
        stating users must provide DOB at signup and that
        misrepresentation may result in suspension or termination.
  - **No other material changes.** All other sections, scope, and
    legal posture are unchanged from v1.3. The next Supabase
    `legal_documents` push and the next iOS legal-sheet refresh
    should mirror this v1.4 cut.

## 2026-05-20 — v1.3

  - **Filename convention.** Renamed `terms-of-service.md`,
    `privacy-policy.md`, and `community-guidelines.md` to
    `terms_of_service.md`, `privacy_policy.md`, and
    `community_guidelines.md` (underscores). This matches what the
    website's `legal.js` fetches from `github.com/carlinkhq/legal/raw/main/`
    and the iOS app's `legal_documents.doc_type` keys. Pre-rename the
    website would have 404'd against this repo. All inter-document
    links inside the markdown bodies have been updated accordingly.
  - **Marketplace removed.** Section 9 of the Community Guidelines
    ("Marketplace and Parts Listings") has been deleted. CarLink does
    not operate a marketplace, and keeping the section in the docs
    would have misrepresented the product. The "Off-platform payment
    schemes designed to evade marketplace safeguards" line in
    Section 7 was also removed for the same reason. The reference to
    "marketplace items" in the welcome paragraph was removed. The
    "marketplace access" restriction in Section 11 (Reporting and
    Enforcement) was removed. Remaining sections were renumbered
    10 → 9, 11 → 10, etc.
  - **Ticketing language softened.** Section 6 of the Terms of
    Service no longer says CarLink supports "ticketed events" — the
    app exposes a free-vs-paid filter for organizer-set admission
    information but does NOT process tickets, payments, or refunds.
    The new copy makes that explicit. The Community Guidelines event
    organizer section now reads "admission cost (if any)" instead of
    implying CarLink runs ticketing.
  - **No "no ads" claims.** Earlier drafts of v1.3 inserted
    affirmations that CarLink has no advertisements anywhere. Those
    claims were removed before publication — the website **does**
    serve Google AdSense (see Privacy Policy §4.5), and the iOS app
    may introduce advertising in a future release. The Privacy
    Policy retains the existing AdSense disclosure verbatim from the
    earlier intermediate v1.3 draft (the §4.5 section, §2.3
    Advertising partners line, §5 opt-out item, §6 opt-out language,
    §11 California disclosure, §12 EU consent paragraph). The Terms
    of Service is silent on advertising — neither affirming nor
    denying — so future monetization can be introduced through the
    standard 30-day-notice amendment path in §17 without needing
    another contradiction cleanup.
  - **Effective Date posture.** Pre-public-beta, no incumbent user
    base to give 30-day notice to, so Effective Date and Last Updated
    are both 2026-05-20. The 30-day notice convention applies to
    subsequent material changes once we have users.
  - Files updated: README.md, CHANGELOG.md, terms_of_service.md,
    privacy_policy.md, community_guidelines.md.

## 2026-05-14 — v1.2

  - **Jurisdiction migration.** CarLink HQ LLC is registered and
    operated out of Woodstock, Georgia. The three documents now
    reflect that:
    - Governing law: **State of Georgia** (was State of California).
    - Exclusive litigation venue: **Cherokee County, Georgia** (was
      San Francisco County, California). Cherokee County is the
      county Woodstock sits in.
    - Binding arbitration venue: **Atlanta, Georgia** (was San
      Francisco, California). JAMS administration unchanged.
    - Mailing / contact address: **Woodstock, Georgia, USA** (was
      San Francisco, California, USA).
  - **What stayed the same.** The California-specific privacy
    disclosures in `privacy-policy.md` (CCPA / CPRA rights, sale /
    sharing notice, sensitive-PI handling) are retained verbatim.
    Those obligations attach to the *residence of the user*, not
    the location of the controller — California residents using
    CarLink retain every right they had before this revision.
    GDPR disclosures for EU residents are likewise unchanged.
  - **Files updated:** README.md, CHANGELOG.md,
    terms-of-service.md, privacy-policy.md, community-guidelines.md.
  - **Effective Date posture.** Pre-public-beta, no incumbent
    user base to give 30-day notice to, so Effective Date and
    Last Updated are both 2026-05-14. The 30-day notice convention
    applies to subsequent material changes once we have users.

## 2026-05-13 — v1.1

  - **Contact consolidation.** All correspondence channels — General,
    Legal, Privacy, Copyright / DMCA — now route through a single
    address: `support@carlinkhq.com`. The previously listed
    `legal@`, `privacy@`, and `dmca@` aliases are retired. Users
    reaching any of those addresses are not lost — they're either
    bounced (no MX configured) or, where they were already aliased,
    they continue to deliver to the same inbox. This is purely a
    documentation cleanup: one published address, one operator, no
    fragmentation. No substantive change to user rights, processing
    purposes, retention, or governing law.
  - Files updated: README.md, privacy-policy.md, terms-of-service.md.
    Community Guidelines was already on `support@` and did not
    require an edit.

## 2026-05-08 — v1.0

  - Initial publication of all three documents under CarLink HQ LLC
    ownership.
  - Documents cover: account creation, content licenses, private
    accounts and follow requests, stories (24h ephemeral), shows /
    organizer responsibilities, messaging, marketplace, intellectual
    property / DMCA, dispute resolution, governing law (California),
    GDPR / CCPA / CPRA disclosures, children's privacy.
