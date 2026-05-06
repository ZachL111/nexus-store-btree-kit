@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 55, capacity: 88, latency: 8, risk: 9, weight: 6)
        precondition(Policy.score(signalcase_1) == 150)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 67, capacity: 73, latency: 12, risk: 24, weight: 11)
        precondition(Policy.score(signalcase_2) == 82)
        precondition(Policy.classify(signalcase_2) == "review")
        let signalcase_3 = Signal(demand: 98, capacity: 75, latency: 13, risk: 18, weight: 5)
        precondition(Policy.score(signalcase_3) == 149)
        precondition(Policy.classify(signalcase_3) == "review")
        let domainReview = DomainReview(signal: 64, slack: 50, drag: 31, confidence: 68)
        precondition(DomainReviewLens.score(domainReview) == 153)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
