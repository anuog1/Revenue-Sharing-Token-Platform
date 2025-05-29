;; Revenue-Sharing Token Platform
;; A platform for businesses to tokenize future revenue streams

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-authorized (err u101))
(define-constant err-project-exists (err u102))
(define-constant err-project-not-found (err u103))
(define-constant err-invalid-parameters (err u104))
(define-constant err-insufficient-funds (err u105))
(define-constant err-exceeds-allocation (err u106))
(define-constant err-project-not-active (err u107))
(define-constant err-verification-failed (err u108))
(define-constant err-verification-period-active (err u109))
(define-constant err-verification-period-ended (err u110))
(define-constant err-already-claimed (err u111))
(define-constant err-nothing-to-claim (err u112))
(define-constant err-not-within-trading-window (err u113))
(define-constant err-trade-limit-exceeded (err u114))
(define-constant err-order-not-found (err u115))
(define-constant err-self-trade (err u116))
(define-constant err-price-mismatch (err u117))
(define-constant err-verification-in-progress (err u118))
(define-constant err-invalid-order-state (err u119))
(define-constant err-token-transfer-failed (err u120))
(define-constant err-fee-payment-failed (err u121))
(define-constant err-exceeds-platform-limit (err u122))
(define-constant err-invalid-audit-data (err u123))
(define-constant err-audit-in-progress (err u124))
(define-constant err-invalid-report-period (err u125))

;; Platform parameters
(define-data-var next-project-id uint u1)
(define-data-var next-report-id uint u1)
(define-data-var next-order-id uint u1)
(define-data-var next-audit-id uint u1)
(define-data-var platform-fee-percentage uint u200) ;; 2% (basis points)
(define-data-var verification-period uint u72) ;; ~12 hours (assuming 6 blocks/hour)
(define-data-var min-verification-threshold uint u3) ;; Minimum verifiers needed
(define-data-var max-token-supply uint u100000000000) ;; 1 trillion tokens max
(define-data-var treasury-address principal contract-owner)
(define-data-var emergency-halt bool false)
(define-data-var platform-token-supply uint u1000000000) ;; 1 billion platform tokens
