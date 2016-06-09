//
//  ObjcDataSource.m
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

#import "ObjcDataSource.h"

NSString *const CELL_IDENT = @"ourCellIdent";

@implementation ObjcDataSource

-(NSInteger) numberOfSectionsInTableView:(UITableView*)tableView {
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENT forIndexPath:indexPath];
    cell.textLabel.text = @"SCOOOBS";
    
    return cell;
}

@end
