//
//  ObjcDataSource.m
//  Tbl_MixedDebug
//
//  Created by BjornC on 6/8/16.
//  Copyright © 2016 Builtlight. All rights reserved.
//

#import "ObjcDataSource.h"
#import "Tbl_MixedDebug-Swift.h"

//NSString *const CELL_IDENT = @"ourCellIdent";
NSString *CELL_IDENT = @"ourCellIdent";


@interface ObjcDataSource ()
@property (nonatomic,strong) Menagerie *ourMenagerie;
@end


@implementation ObjcDataSource

#define MAX_MENAGE_SIZE 7 // will add +3 so we never have an empty table

-(instancetype) init {
    self = [super init];
    int menagerieSize = arc4random_uniform(MAX_MENAGE_SIZE)+3;

    if (self){
        NSLog(@"creating menagerie of size: %d",menagerieSize);
        self.ourMenagerie = [[Menagerie alloc] initWithMenageSize:menagerieSize];
        
    }
    [self simpleStuff];
    
    return self;
}

// Real simple stuff that makes sense when you disassemble it
// break at a=3 and do 'di -p' / 'di' / 'di -m ' (results are recognizeable)
//
// watchpoint example: stop at declaration line: 'watch set var c' and continue,
//      also note what happens when var goes out of scope('watch delete')
// This is also a good place to run 'frame variable' to see all the variables in scope

-(void) simpleStuff {
    int a,b,c;
    a = 3;
    b = 7;
    c = a + b;
    
    CELL_IDENT = @"Pickes";
    
    printf("sum of a+b+c = %d\n",(a+b+c)); // stop here and do 'di -l' to show one line HHL turns into many instructions
    
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
