undefined8 main(void)

{
  long in_FS_OFFSET;
  size_t input_size;
  ulong local_28;
  long *mega_malloc_address;
  void *second_malloc_address;
  long canary;
  
  canary = *(long *)(in_FS_OFFSET + 0x28);
  setup();
  banner();
  input_size = 0;
  mega_malloc_address = (long *)malloc(0x30000);
  *mega_malloc_address = 1;
  printstr(
          "In the ancient realm of Eldoria, a roaming bard grants you good luck and offers you a gif t!\n\nPlease accept this: "
          );
  printf("%p",mega_malloc_address);   // sputa indirizzo heap
  sleep(1);
  for (local_28 = 0; local_28 < 0xe; local_28 = local_28 + 1) {
    printf("\b \b");
    usleep(60000);
  }
  puts("\n");
  printf("%s[%sBard%s]: Now, I want something in return...\n\nHow about a song?\n\nGive me the song \'s length: "
         ,&DAT_00102063,&DAT_00102643,&DAT_00102063);
  __isoc99_scanf(&DAT_001026b1,&input_size);
  second_malloc_address = malloc(input_size);
  printf("\n%s[%sBard%s]: Excellent! Now tell me the song: ",&DAT_00102063,&DAT_00102643,
         &DAT_00102063);
  read(0,second_malloc_address,input_size);
  *(undefined8 *)((long)second_malloc_address + (input_size - 1)) = 0;
  write(1,second_malloc_address,input_size);

  if (*mega_malloc_address == 0) {
    read_flag();
  }
}



void printstr(char *param_1)

{
  long lVar1;
  size_t sVar2;
  long in_FS_OFFSET;
  ulong local_18;
  
  lVar1 = *(long *)(in_FS_OFFSET + 0x28);
  local_18 = 0;
  while( true ) {
    sVar2 = strlen(param_1);
    if (sVar2 <= local_18) break;
    putchar((int)param_1[local_18]);
    usleep(15000);
    local_18 = local_18 + 1;
  }
  if (lVar1 != *(long *)(in_FS_OFFSET + 0x28)) {
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail();
  }
  return;
}