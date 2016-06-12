//
//  ObjcDataSource.m
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

#import "ObjcDataSource.h"
#import "Tbl_MixedDebug-Swift.h"

NSString *const CELL_IDENT = @"ourCellIdent";


@interface ObjcDataSource ()
@property (nonatomic,strong) Menagerie *ourMenagerie;
@end


@implementation ObjcDataSource

-(instancetype) init {
    self = [super init];
    if (self){
        self.ourMenagerie = [[Menagerie alloc] init];
    }
    return self;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView*)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.ourMenagerie numberOfAnimals];
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENT forIndexPath:indexPath];
    NSArray *critters = [self.ourMenagerie getAnimals];
    cell.textLabel.text = critters[indexPath.row];
    
    return cell;
}

@end
