import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/features/bond/presentation/screens/company_details.dart';

import '../../../../core/theme/app_color.dart';

class SearchResult extends StatelessWidget {
  final String logo;
  final String isin;
  final String rating;
  final String companyName;
  final String? searchTerm;
  const SearchResult({super.key, required this.logo, required this.isin, required this.rating, required this.companyName, this.searchTerm});

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);
    final isinString= isin.substring(0,8);
    final isinLastDigits= isin.substring(8);
    // print(isinString);

    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>CompanyDetails(isin: '$isinString$isinLastDigits',)));
      },
      child: Row(
        spacing: 10.w,
        children: [
          Container(
            width: 50.w,
            height: 50.w,
            padding: EdgeInsets.all(5.r),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.grey200),
            ),
            child: Image.network(logo),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5.h,
              children: [
                Row(
                  children: [
                    highlightText(
                        fullText: isinString,
                        defaultTextStyle: theme.textTheme.titleMedium?.copyWith(
                            color: AppColors.grey500,
                        )
                    ),
                    highlightText(
                        fullText: isinLastDigits,
                        highlight: searchTerm,
                        defaultTextStyle: theme.textTheme.titleLarge
                    ),
                  ],
                ),
                // RichText(
                //   text: TextSpan(
                //     text: isinString,
                //     style: theme.textTheme.titleMedium?.copyWith(
                //       color: AppColors.grey500,
                //         backgroundColor: _getTextBgColor(isinString)
                //     ),
                //     children: [
                //       TextSpan(
                //         text: isinLastDigits,
                //         style: theme.textTheme.titleLarge?.copyWith(
                //           backgroundColor: _getTextBgColor(isinLastDigits)
                //         )
                //       ),
                //     ]
                //   ),
                // ),
                Row(
                  spacing: 5.w,
                  children: [
                    Text(rating,
                      style: theme.textTheme.titleSmall,
                    ),
                    Icon(Icons.circle,size: 5.sp,),
                    Expanded(
                      child: highlightText(
                          fullText: companyName,
                          highlight: searchTerm,
                          defaultTextStyle: theme.textTheme.titleSmall
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios,size: 12.sp,color: AppColors.blue700,)
        ],
      ),
    );
  }

  Color? _getTextBgColor(String text){
    if(searchTerm!=null && searchTerm!.isNotEmpty){
      final searchTermsArray = searchTerm!.toLowerCase().split(' ');
      return searchTermsArray.any((term)=>
          text.toLowerCase().contains(term)
      )?
      AppColors.amber600.withValues(alpha: 0.16) : null;
    }
    return null;
  }

  Widget highlightText({required String fullText,
    String? highlight,
    required TextStyle? defaultTextStyle}) {

    if(highlight==null) {
      return Text(fullText,style: defaultTextStyle,);
    }
    int startIndex = -1, endIndex=-1;
    List<TextSpan> textSpan=[];
    final highlightedArray= highlight.split(RegExp(r'\s+'));
    // print('highlighted search: $highlightedArray');
    for(final s in highlightedArray){
      if(s.trim().isNotEmpty){
        startIndex= fullText.toLowerCase().indexOf(s.trim().toLowerCase());
        if (startIndex == -1){
          // textSpan.add(TextSpan(
          //   text: fullText.substring(s.length-1)
          // ));
          continue;
        }
        final before = fullText.substring(0, startIndex);
        final match = fullText.substring(startIndex, startIndex + s.length);
        final after = fullText.substring(s.length);
        textSpan.add(TextSpan(text: before));
        textSpan.add(TextSpan(text: match,style: defaultTextStyle?.copyWith(
            backgroundColor: AppColors.amber600.withValues(alpha: 0.16)
        ),),);
        textSpan.add(TextSpan(text: after));
        // print('full text: $fullText, Search Term: $s=> [$startIndex,$endIndex]');
      }
    }

    if(textSpan.isEmpty){
      textSpan.add(TextSpan(
          text: fullText
        ));
    }
    return Text.rich(
      TextSpan(
        children: textSpan,
      ),
      style: defaultTextStyle,
    );
  }


}
