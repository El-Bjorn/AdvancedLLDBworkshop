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
        //self.ourMenagerie.menagerie = @[@"ant",@"grass-hopper",@"beetle"]; // app runs fine
        //self.ourMenagerie.menagerie = @[@"ant",@"grass-hopper",@"beetle",@5]; // xcode think its ok, but crashes
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENT forIndexPath:indexPath]; // get a cell
    // set the animal
    NSString *cellAnimal = [self.ourMenagerie getAnimalAtIndex:indexPath.row];
    cell.textLabel.text = cellAnimal;
    
    return cell;
}

@end
