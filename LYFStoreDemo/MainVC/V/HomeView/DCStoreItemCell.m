//
//  DCStoreItemCell.m
//  CDDStoreDemo
//
//  Created by apple on 2017/3/20.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "DCStoreItemCell.h"

#import "ProductModel.h"

@interface DCStoreItemCell()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *goodstitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *salesLabel;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;
@property (weak, nonatomic) IBOutlet UILabel *introduceLabel;

@end

@implementation DCStoreItemCell

- (void)setStoreItem:(ProductModel *)storeItem
{
    storeItem = storeItem;
    
    self.iconImageView.image = [UIImage imageNamed:storeItem.goodspics];
    
    self.goodstitleLabel.text = storeItem.goods_title;
    
    self.salesLabel.text = [NSString stringWithFormat:@"销售 %@笔",storeItem.sales];
    
    self.priceLabel.text = [NSString stringWithFormat:@"¥ %0.2f",[storeItem.price floatValue]];
    
    self.introduceLabel.text = storeItem.secondtitle;

}

@end
