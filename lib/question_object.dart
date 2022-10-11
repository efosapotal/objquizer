class QuestionObject {
  final int? id;
  final String? question;
  final List? options;
  final String? answer;
  final String? explanation;
  int? _selectedans;

  QuestionObject({
    this.id,
    this.question,
    this.options,
    this.answer,
    this.explanation,
  });

  void isAnswered(int selectedAns) {
    _selectedans = selectedAns;
  }

  static List<QuestionObject> samples = [
    QuestionObject(
      id: 1,
      question: "Hormones are synthesized and secreted by",
      options: ["skeletal muscle fibre", "ductless glands", "pancreatic acinar cells", "parotid glands", "all given options are correct"],
      answer: "ductless glands",
      explanation: "Hormones are synthesized and secreted from endocrine gland (also called ductless gland) \n They are termed ductless glands because the hormones secreted by them are released directly into blood without any duct)",
    ),
    QuestionObject(
      id: 2,
      question: "Hormones are secreted directly into",
      options: [
        "stomach",
        "urinary bladder",
        "gall bladder",
        "blood and plasma",
        "only blood",
      ],
      answer: "only blood",
      explanation: "Hormones are secreted directly into blood",
    ),
    QuestionObject(
      id: 3,
      question: "Hormones that act through intracellular or nuclear receptors produce their effects within",
      options: ["hours or days", "seconds", "minutes", "none", "all given options(except none) "],
      answer: "hours or days",
      explanation: "Hormones that act through intracellular or nuclear receptors such as steriod hormones are slow acting hormones",
    ),
    QuestionObject(
      id: 4,
      question: "Which of the following hormones act through cell membrane receptors?",
      options: ["steroid hormones", "thyroxine", "peptide hormone", "vit. D", "none"],
      answer: "peptide hormone",
      explanation: "Protein(peptide) hormones and the catecholamines act by activating the intracellular enzymes through cell membrane receptors \n Thyroid and steroid hormones execute their function by acting on genes in the target cells",
    ),
    QuestionObject(
      id: 5,
      question: "Adrenal cortex does not secrete",
      options: ["cortisol", "androgens", "mineralcorticoid", "aldosterone", "dopamine"],
      answer: "dopamine",
      explanation: "Adrenal cortex is differntiated into 3 zones namely \n 1. Zona glomerulosa(Outermost layers) which secrete mineralocorticoids(mainly aldosterone) \n 2. zona fasciculata which secretes glucorticoids(mainly cortisol) and small amount of androgens \n  zona recticularis  which secretes androgens and small amount of glucocorticoids \n dopamine(also called prolactin-inhibitory hormone) is screted by the hypothalamus ",
    ),
  ];
}
