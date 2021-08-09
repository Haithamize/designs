import 'package:designs/modules/choose_payment_method/choose_payment_method_screen.dart';
import 'package:designs/modules/payment_with_credit_card/credit_card_payment_screen.dart';
import 'package:designs/utilities/sticky_tables/decorated_table.dart';
import 'package:designs/utilities/sticky_tables/simple_table_page.dart';
import 'package:designs/utilities/sticky_tables/tap_handler_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:table_sticky_headers/table_sticky_headers.dart';

class InvoiceScreen extends StatelessWidget {

  var titleRow =
  [
    '1',
    '2',
    '3',
    '4',
  ];

  var titleColumn =
  [
    'Product Name',
    'Price',
    'Qty',
    'TOTAL',
  ];

  List<List<String>> data =
  [
    ['Product Name','Product Name','Product Name','Product Name'], //da kda awl column bta3 el product name
    ['10000','10000','10000','10000'], // da column el price
    ['100','100','100','100'],// da column el Qty
    ['1000000','1000000','1000000','1000000'], //da column el total
  ];



  double _scrollOffSetX = 0.0;
  double _scrollOffSetY = 0.0;

  var verticalTitleScrollController = ScrollController();
  var verticalbodyScrollController = ScrollController();
  var horizontalTitleScrollController = ScrollController();
  var horizontalbodyScrollController = ScrollController();

  var columnTitlesInArabic =
  [
    'اسم المنتج',
    'سعر المنتج',
    'عدد المنتجات',
    'مجمل سعر المنتجات',
  ];

  @override
  Widget build(BuildContext context) {
    // print(data);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height / 8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              bottomStart: Radius.circular(25), bottomEnd: Radius.circular(25)),
        ),
        backgroundColor: Colors.white,
        title: const Center(
          child: Text(
            'Your Invoice',
            style: TextStyle(
                color: CupertinoColors.black,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.home,
              color: Colors.black,
              size: 50,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children:
            [
              Text(
                'You Choose to Pay With',
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Theme(
                  data: ThemeData(
                    unselectedWidgetColor:
                    Colors.red, //da hy8yr lon el circle mn barra
                  ),
                  child: ListTile(
                    minLeadingWidth: 5,
                    title: Text("Pay With Your Credit Card\n**** **** **** 6895"),
                    leading: Radio(
                      value: 1,
                      groupValue: 1,
                      onChanged: (value) {
                      },
                      hoverColor: Colors.red,
                      activeColor: Colors
                          .black, //da hy8yr lon el radio button mn gwa y5leh eswd lma ytdas 3leh
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Your Invoice',
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 225,
                child: StickyHeadersTable(
                 //  titleRow: titleRow,  //est5dm dol lw htst5dm el classes eli fl utility package eli homa el decorated aw el taphandler
                 // titleColumn: titleColumn,
                 // data: data,
                  onColumnTitlePressed: (index){
                    makeToast(
                        message: columnTitlesInArabic[index],
                        toastColor: Colors.grey,
                        gravity: ToastGravity.BOTTOM);
                  },
                    columnsLength: titleColumn.length,
                    rowsLength: titleRow.length,
                    columnsTitleBuilder: (i) => Text(titleColumn[i]),
                    rowsTitleBuilder: (i) => Text(titleRow[i]),
                    contentCellBuilder: (i,j) => Text(data[i][j].toString()),
                  legendCell: Text('No.'),
                  initialScrollOffsetX: _scrollOffSetX,
                  initialScrollOffsetY: _scrollOffSetY,
                  onEndScrolling: (scrollOffsetX, scrollOffsetY){
                      _scrollOffSetX = scrollOffsetX;
                      _scrollOffSetY = scrollOffsetY;
                  },
                  scrollControllers: ScrollControllers(
                    horizontalBodyController: horizontalbodyScrollController,
                    horizontalTitleController: horizontalTitleScrollController,
                    verticalBodyController: verticalbodyScrollController,
                    verticalTitleController: verticalTitleScrollController,
                  ),
                  cellDimensions: CellDimensions.variableColumnWidth(
                     columnWidths: [100,70,40,100],
                     contentCellHeight: 35,
                     stickyLegendWidth: 25,
                     stickyLegendHeight: 50
                 ),
                ),
              ), //TODO el table eli m3mol wa5ed akpr mn 7agmo w msh 3arf a7aggemo azay
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black
              ), //da el divider
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:
                [
                  Text(
                    'Total Price',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                  Spacer(),
                  Text(
                    'EGP 400,000,00',
                    style: TextStyle(
                        color: CupertinoColors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
              Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.black
              ),
              SizedBox(height: 15,),
              Text(
                'Discounts or Cupones',
                style: TextStyle(
                    color: CupertinoColors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 10,),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8),
                  child: TextField(
                    textAlign: TextAlign.start,
                    maxLines: 100,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add your cupones for discount'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8),
                  child: TextField(
                    textAlign: TextAlign.start,
                    maxLines: 100,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add delivery info...'
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red[600],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> CreditCardPayment()));
                  },
                  icon: Text(
                    'PAY',
                    style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void makeToast({
    required String message,
    required MaterialColor toastColor,
    required ToastGravity gravity,
  }) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity,
        timeInSecForIosWeb: 1,
        backgroundColor: toastColor,
        textColor: Colors.white,
        fontSize: 16.0);
  }

 int calculateTotalPrice(){
    int total = 0;
    for(int i=0 ; i<data.length ; i++){
      for(int j =3 ; j <= data.length ; j++ ){
        // total += data.indexOf();
      }
    }
    return total;
  }
}
