//
//  PrivateOfferModel.h
//  AppPattern
//
//  Created by admin on 2017/9/25.
//  Copyright © 2017年 liushuang.library. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrivateOfferModel : NSObject
/**
 [
 {
 "proId": "836511389375234048",
 "fundType": "2",
 "proCode": "890123",
 "proName": "测试私募",
 "proSize": "100000",
 "subscriptionPoint": "1000",
 "proTerm": "111",
 "proPfr100": "20%",
 "proPfr300": "23%",
 "riskIncome": null,
 "proAdvantage": "1.二姨夫啊实际忽悠哥\r\n2.哦is额发货时间成本\r\n3.所爱好vjn",
 "proExtrude": "1.二姨夫啊实际忽悠哥\r\n2.哦is额发货时间成本\r\n3.所爱好vjn\r\n4；了HDVHJ",
 "tradeOpponent": "交易对手",
 "moneyUse": "资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途",
 "repaymentWay": "还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源",
 "divideWay": null,
 "proScope": "111",
 "proManager": null,
 "riskWay": null,
 "proFee": "基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金费用基金",
 "img": "<p>\r\n\t<table class=\"info w790\" style=\"border:1px solid #D3D3D3;width:790px;font-family:arial, 'Hiragino Sans GB', simsun, sans-serif;color:#555555;margin:0px auto;text-align:center;font-size:14px;background-color:#FFFFFF;\">\r\n\t\t<tbody>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金全称\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t汇添富纯债债券型证券投资基金(LOF)\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金简称\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t汇添富纯债债券(LOF)\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金代码\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t164703（主代码）\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金类型\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t债券型\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t发行日期\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t2013年10月21日\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t成立日期/规模\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t2013年11月06日 / 6.846亿份\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t资产规模\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t0.73亿元（截止至：2016年12月31日）\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t份额规模\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<a href=\"http://fund.eastmoney.com/f10/gmbd_164703.html\">0.7258亿份</a>（截止至：2016年12月31日）\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金管理人\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<a href=\"http://fund.eastmoney.com/company/80053708.html\">汇添富基金</a>\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金托管人\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<a href=\"http://fund.eastmoney.com/bank/80001067.html\">工商银行</a>\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t基金经理人\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<a href=\"http://fund.eastmoney.com/manager/30042301.html\">陆文磊</a>、<a href=\"http://fund.eastmoney.com/manager/30072308.html\">李怀定</a>\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t成立来分红\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<a href=\"http://fund.eastmoney.com/f10/fhsp_164703.html\">每份累计0.00元（0次）</a>\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t管理费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t0.70%（每年）\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t托管费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t0.20%（每年）\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t销售服务费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t0.50%（每年）\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t最高认购费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t---（前端）\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t最高申购费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t<span style=\"text-decoration:line-through;color:#666666;\">0.80%（前端）</span><br />\r\n<span>天天基金优惠费率：<span style=\"color:#FF0000;\">0.08%（前端）</span></span>\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t最高赎回费率\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t0.10%（前端）\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t\t<tr>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t业绩比较基准\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;\">\r\n\t\t\t\t\t中债综合指数\r\n\t\t\t\t</td>\r\n\t\t\t\t<th style=\"border:1px solid #D3D3D3;text-align:left;vertical-align:middle;font-weight:normal;background:#E7E7E7;\">\r\n\t\t\t\t\t跟踪标的\r\n\t\t\t\t</th>\r\n\t\t\t\t<td style=\"border:1px solid #D3D3D3;text-align:left;font-size:14px;vertical-align:middle;color:#808080;\">\r\n\t\t\t\t\t该基金无跟踪标的\r\n\t\t\t\t</td>\r\n\t\t\t</tr>\r\n\t\t</tbody>\r\n\t</table>\r\n</p>"
 },
 {
 "proId": "836030688377233408",
 "fundType": "1",
 "proCode": "S00001",
 "proName": "私募产品001",
 "proSize": "54000",
 "subscriptionPoint": "1000000",
 "proTerm": "24",
 "proPfr100": "9%",
 "proPfr300": "12%",
 "riskIncome": "风险收益风险收益风险收益风险收益风险收益",
 "proAdvantage": "产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点产品优点",
 "proExtrude": "产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点产品亮点",
 "tradeOpponent": "交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手交易对手",
 "moneyUse": "资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途资金用途",
 "repaymentWay": "还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源还款来源",
 "divideWay": "分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式分配方式",
 "proScope": "投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围投资范围",
 "proManager": "上海钜派钰茂",
 "riskWay": "风控措施风控措施风控措施风控措施风控措施风控措施风控措施风控措施风控措施风控措施风控措施",
 "proFee": "基金费用基金费用基金费用基金费用",
 "img": "<p>\r\n\t<img src=\"http://10.8.0.35/portal/upload/image/201703/02/iExvlqtMAYy8PdXl.jpg\" alt=\"\" width=\"0\" height=\"0\" title=\"\" align=\"\" /><img src=\"http://10.8.0.35/portal/upload/image/201703/02/ImAidgav0MlRw2ZD.jpg\" alt=\"\" /><img src=\"http://10.8.0.35/portal/upload/image/201703/02/86QpbXz5K01waAGl.jpg\" alt=\"\" /> \r\n</p>"
 }
 ]
 */
//主键
@property (nonatomic,copy) NSString *proId;
@property (nonatomic,copy) NSString *createTime;
//1固定收益类/2二级市场/3股权投资/4fof基金/5另类投资
@property (nonatomic,copy) NSString *fundType;
@property (nonatomic,copy) NSString *proCode;
//产品名称
@property (nonatomic,copy) NSString *proName;
//基金规模
@property (nonatomic,copy) NSString *proSize;
//起头金额
@property (nonatomic,copy) NSString *subscriptionPoint;
//投资期限
@property (nonatomic,copy) NSString *proTerm;
//产品收益率 [100,300]
@property (nonatomic,copy) NSString *proPfr100;
//产品收益率 [300,+00]
@property (nonatomic,copy) NSString *proPfr300;
//风险收益
@property (nonatomic,copy) NSString *riskIncome;
//产品优势
@property (nonatomic,copy) NSString *proAdvantage;
//产品亮点
@property (nonatomic,copy) NSString *proExtrude;
//交易对手
@property (nonatomic,copy) NSString *tradeOpponent;
//资金用途
@property (nonatomic,copy) NSString *moneyUse;
//还款来源
@property (nonatomic,copy) NSString *repaymentWay;
//分配方式
@property (nonatomic,copy) NSString *divideWay;
//投资范围
@property (nonatomic,copy) NSString *proScope;
//资金管理人
@property (nonatomic,copy) NSString *proManager;
//风控措施
@property (nonatomic,copy) NSString *riskWay;
//资金费用
@property (nonatomic,copy) NSString *proFee;
//产品详情
@property (nonatomic,copy) NSString *img;
@end
