//
//  DataSource.m
//  DXTableKit
//
//  Created by dev2 on 10/10/12.
//  Copyright (c) 2012 111. All rights reserved.
//

#import "DXDataSource.h"

@implementation DXDataSource

- (id <UITableViewDataSource>)initForTableView:(DXTableView *)tableView {
    self = [super init];
    if (self) {
        _tableView = tableView;
    }
    return self;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [_tableView.root numberOfSections];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_tableView.root getSectionForIndex:section].elements.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DXSection *section = [_tableView.root getSectionForIndex:indexPath.section];
    DXElement *element = [section.elements objectAtIndex:(NSUInteger) indexPath.row];
    UITableViewCell *cell = [element getCellForTableView:(DXTableView *) tableView controller:_tableView.controller];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return [_tableView.root getSectionForIndex:section].title;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
    }
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
    }
}


- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}
@end
