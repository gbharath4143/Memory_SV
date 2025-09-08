`define WIDTH 16
`define DEPTH 64
`define ADDR_WIDTH $clog2(`DEPTH)


class common_mem;
  static mailbox gen2bfm = new();
  static mailbox mon2sbd = new();
  static mailbox mon2cov = new();

  static int sbd_s,sbd_f;    

endclass