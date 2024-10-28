import '../designsystem/widgets/components/bank_transaction_icon.dart';

class MockData {
  static List<TransactionModel> get transactions => [
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۲۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۶۳٬۲۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۷۲٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۳۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۱٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'جمعه | ۱ تیر | ۰۹:۰۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۶۳٬۲۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۳ اردیبهشت | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۵٬۵۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: true,
        title: 'واریز به سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۱۰٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'دوشنبه | ۶ فروردین ۰۲ | ۱۷:۴۵',
        amount: '۶۳٬۰۰۰٬۰۰۰ ﷼'),
    TransactionModel(
        isInput: false,
        title: 'برداشت از سپرده',
        subtitle: 'شنبه | ۲۳ تیر | ۱۲:۲۲',
        amount: '۱٬۰۰۰٬۰۰۰ ﷼'),
  ];
}
