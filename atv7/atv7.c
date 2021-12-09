#include <linux/init.h>
#include <linux/module.h>
MODULE_LICENSE("Dual BSD/GPL");

int p;
module_param(p, int, 0);

static int ola(void){
    printk("Modulo inicializado - Olá!\n");

    return 0;
}
static void tchau(void){
    printk("Modulo removido - %d - tchau!\n",p);
    
}
module_init(ola);
module_init(tchau);
