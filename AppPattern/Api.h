//
//  Api.h
//  Jpym
//
//  Created by 刘双 on 2017/5/23.
//  Copyright © 2017年 jpym.product.com. All rights reserved.
//

#ifndef Api_h
#define Api_h

//#define LocalTest @"http://10.8.0.38:8080/spring"

//#define APiDomainLocalPrefix @"http://10.8.0.72:81" //内网

#define APiDomainLocalPrefix @"http://120.25.242.197:81" //外网
//用户注册界面
//-----------------------------------------------------------------------
/**
 用户注册接口
 */
#define PersonRegisterApi APiDomainLocalPrefix@"/portal/user/register"

/**
 发送手机验证码
 */
#define PersonFsSendcode APiDomainLocalPrefix@"/portal/fsSendcode/verification"

/**
 校验手机验证码
 */
#define PersonChecksendcode APiDomainLocalPrefix@"/portal/fsSendcode/checksendcode"

//机构注册界面
//-----------------------------------------------------------------------


/**
 机构注册接口
 */
#define OrgRegisterApi APiDomainLocalPrefix@"/portal/user/orgOpenAccount"


// 用户登录界面
//-----------------------------------------------------------------------
/**
 用户登录接口
 */
#define LoginApi APiDomainLocalPrefix@"/portal/user/login"


/**
 检测用户是否存在，注册，开户
 */
//#define DetectionUserExist APiDomainLocalPrefix@"/controller/getUperson"
#define DetectionUserExist APiDomainLocalPrefix@"/spring/controller/getUperson"

//用户开户
//-----------------------------------------------------------------------
//获取开户行省份
#define RNAProvinceOfOpenAccount APiDomainLocalPrefix@"/portal/bankcard/queryProv"

//获取开户行城市
#define RNACityOfOpenAccount APiDomainLocalPrefix@"/portal/bankcard/queryCity"

//获取证件类型
#define RNACardTypeOfOpenAcc APiDomainLocalPrefix@"/spring/controller/queryCmsProperties?type=card_type"

//获取银行信息
#define RNABankInfoOfOpenAcc APiDomainLocalPrefix@"/spring/controller/queryBank"

//获取开户行支行信息
#define RNABranchOfBankInfo APiDomainLocalPrefix@"/portal/bankcard/queryKhh"
//个人用户开户
#define RNAPersonOpenAccount APiDomainLocalPrefix@"/portal/user/openAccount"

//密码管理
//-----------------------------------------------------------------------
// 重置登录密码
#define ForgetLoginPWd APiDomainLocalPrefix@"/portal/pwdmodify/resetLoginPassword"
// 修改登录密码
#define AccManageAlterPwd APiDomainLocalPrefix@"/portal/pwdmodify/modifyLoginPwd"
// 修改交易密码
#define AccManageAlterTrasatinoPwd APiDomainLocalPrefix@"/portal/pwdmodify/modifyTradePassword"
// 重置交易密码
#define AccManageFindTrasatinoPwd APiDomainLocalPrefix@"/portal/pwdmodify/resetTradePassword"

//银行卡管理
//-----------------------------------------------------------------------
//获取用户银行卡信息
#define AccManageAllBankCard APiDomainLocalPrefix@"/spring/controller/queryUserBank"
//删除银行卡
#define AccManageBankCarDelete APiDomainLocalPrefix@"/portal/bankcard/destoryBankcar"
//添加银行卡
#define AccManageBankCardAdd APiDomainLocalPrefix@"/portal/bankcard/addBankcar"

//个人信息管理
//-----------------------------------------------------------------------
//获取用户信息
#define AccManagePersonInfo APiDomainLocalPrefix@"/spring/controller/getUperson"
//修改个人信息
#define AccManageAlterPersonInfo APiDomainLocalPrefix@"/portal/customInfor/modifycustomerinfo"


//交易模块
//-----------------------------------------------------------------------
//获取钰金宝产品
#define YuJinBaoProduct APiDomainLocalPrefix@"/spring/controller/getYjb"


//获取公募产品
//-----------------------------------------------------------------------


//funCode  为空
#define PublicOfferingProducts APiDomainLocalPrefix@"/spring/controller/queryPublicProductInfo"
//#define PublicOfferingProducts LocalTest@"/controller/queryPublicProductInfo"

//传基金代码 funCode
#define PublicOfferingSingleProduct APiDomainLocalPrefix@"/spring/controller/queryPublicProductInfo"

//获取私募产品
//-----------------------------------------------------------------------
//获取所有产品
#define PrivateOfferProducts  APiDomainLocalPrefix@"/spring/controller/queryPrivateProductInfo"
//获取单个产品 参数:
#define PrivateOfferSingleProduct  APiDomainLocalPrefix@"/spring/controller/queryPublicPrivateInfo"


//获取社区数据
//-----------------------------------------------------------------------

#define CommunityArticleProduct APiDomainLocalPrefix@"/spring/controller/queryArticles"


#endif /* Api_h */

