// (C) 1992-2015 Altera Corporation. All rights reserved.                         
// Your use of Altera Corporation's design tools, logic functions and other       
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Altera MegaCore Function License Agreement, or other applicable     
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Altera and sold by   
// Altera or its authorized distributors.  Please refer to the applicable         
// agreement for further details.                                                 
    

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_add_basic_block_0
	(
		input 		clock,
		input 		resetn,
		input [63:0] 		input__m1,
		input [31:0] 		input_global_size_0,
		input [63:0] 		input__m2,
		input [63:0] 		input__add,
		input 		valid_in,
		output 		stall_out,
		input [31:0] 		input_global_id_0,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		input 		start,
		output 		avm_local_bb0_ld__enable,
		input [255:0] 		avm_local_bb0_ld__readdata,
		input 		avm_local_bb0_ld__readdatavalid,
		input 		avm_local_bb0_ld__waitrequest,
		output [29:0] 		avm_local_bb0_ld__address,
		output 		avm_local_bb0_ld__read,
		output 		avm_local_bb0_ld__write,
		input 		avm_local_bb0_ld__writeack,
		output [255:0] 		avm_local_bb0_ld__writedata,
		output [31:0] 		avm_local_bb0_ld__byteenable,
		output [4:0] 		avm_local_bb0_ld__burstcount,
		output 		local_bb0_ld__active,
		input 		clock2x,
		output 		avm_local_bb0_ld__u0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_readdata,
		input 		avm_local_bb0_ld__u0_readdatavalid,
		input 		avm_local_bb0_ld__u0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_address,
		output 		avm_local_bb0_ld__u0_read,
		output 		avm_local_bb0_ld__u0_write,
		input 		avm_local_bb0_ld__u0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_burstcount,
		output 		local_bb0_ld__u0_active,
		output 		avm_local_bb0_st_add_enable,
		input [255:0] 		avm_local_bb0_st_add_readdata,
		input 		avm_local_bb0_st_add_readdatavalid,
		input 		avm_local_bb0_st_add_waitrequest,
		output [29:0] 		avm_local_bb0_st_add_address,
		output 		avm_local_bb0_st_add_read,
		output 		avm_local_bb0_st_add_write,
		input 		avm_local_bb0_st_add_writeack,
		output [255:0] 		avm_local_bb0_st_add_writedata,
		output [31:0] 		avm_local_bb0_st_add_byteenable,
		output [4:0] 		avm_local_bb0_st_add_burstcount,
		output 		local_bb0_st_add_active
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((&valid_in) & ~((|stall_out)));
assign _exit = ((&valid_out) & ~((|stall_in)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in;
 reg merge_node_valid_out_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_global_id_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] local_lvm_input_global_id_0_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = (|(merge_node_stall_in & merge_node_valid_out_NO_SHIFT_REG));
assign stall_out = merge_node_valid_in_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_staging_reg_NO_SHIFT_REG | valid_in))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_global_id_0_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_staging_reg_NO_SHIFT_REG))
			begin
				input_global_id_0_staging_reg_NO_SHIFT_REG <= input_global_id_0;
				merge_node_valid_in_staging_reg_NO_SHIFT_REG <= valid_in;
			end
		end
		else
		begin
			merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in))
			begin
				merge_node_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_idxprom_stall_local;
wire [63:0] local_bb0_idxprom;

assign local_bb0_idxprom[32] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[33] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[34] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[35] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[36] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[37] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[38] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[39] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[40] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[41] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[42] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[43] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[44] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[45] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[46] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[47] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[48] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[49] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[50] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[51] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[52] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[53] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[54] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[55] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[56] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[57] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[58] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[59] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[60] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[61] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[62] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[63] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[31:0] = local_lvm_input_global_id_0_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx_stall_local;
wire [63:0] local_bb0_arrayidx;

assign local_bb0_arrayidx = ((input__m1 & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h2));

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx2_stall_local;
wire [63:0] local_bb0_arrayidx2;

assign local_bb0_arrayidx2 = ((input__m2 & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h2));

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx_valid_out;
wire local_bb0_arrayidx_stall_in;
wire local_bb0_arrayidx2_valid_out;
wire local_bb0_arrayidx2_stall_in;
wire local_bb0_arrayidx4_valid_out;
wire local_bb0_arrayidx4_stall_in;
wire local_bb0_arrayidx4_inputs_ready;
wire local_bb0_arrayidx4_stall_local;
wire [63:0] local_bb0_arrayidx4;
 reg local_bb0_arrayidx_consumed_0_NO_SHIFT_REG;
 reg local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG;
 reg local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG;

assign local_bb0_arrayidx4_inputs_ready = merge_node_valid_out_NO_SHIFT_REG;
assign local_bb0_arrayidx4 = ((input__add & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h2));
assign local_bb0_arrayidx4_stall_local = ((local_bb0_arrayidx_stall_in & ~(local_bb0_arrayidx_consumed_0_NO_SHIFT_REG)) | (local_bb0_arrayidx2_stall_in & ~(local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG)) | (local_bb0_arrayidx4_stall_in & ~(local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG)));
assign local_bb0_arrayidx_valid_out = (local_bb0_arrayidx4_inputs_ready & ~(local_bb0_arrayidx_consumed_0_NO_SHIFT_REG));
assign local_bb0_arrayidx2_valid_out = (local_bb0_arrayidx4_inputs_ready & ~(local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG));
assign local_bb0_arrayidx4_valid_out = (local_bb0_arrayidx4_inputs_ready & ~(local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG));
assign merge_node_stall_in = (|local_bb0_arrayidx4_stall_local);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_arrayidx_consumed_0_NO_SHIFT_REG <= 1'b0;
		local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG <= 1'b0;
		local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		local_bb0_arrayidx_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx4_inputs_ready & (local_bb0_arrayidx_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx_stall_in)) & local_bb0_arrayidx4_stall_local);
		local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx4_inputs_ready & (local_bb0_arrayidx2_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx2_stall_in)) & local_bb0_arrayidx4_stall_local);
		local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx4_inputs_ready & (local_bb0_arrayidx4_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx4_stall_in)) & local_bb0_arrayidx4_stall_local);
	end
end


// This section implements a staging register.
// 
wire rstag_1to1_bb0_arrayidx_valid_out;
wire rstag_1to1_bb0_arrayidx_stall_in;
wire rstag_1to1_bb0_arrayidx_inputs_ready;
wire rstag_1to1_bb0_arrayidx_stall_local;
 reg rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG;
wire rstag_1to1_bb0_arrayidx_combined_valid;
 reg [63:0] rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_1to1_bb0_arrayidx;

assign rstag_1to1_bb0_arrayidx_inputs_ready = local_bb0_arrayidx_valid_out;
assign rstag_1to1_bb0_arrayidx = (rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG ? rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG : (local_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFC));
assign rstag_1to1_bb0_arrayidx_combined_valid = (rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG | rstag_1to1_bb0_arrayidx_inputs_ready);
assign rstag_1to1_bb0_arrayidx_valid_out = rstag_1to1_bb0_arrayidx_combined_valid;
assign rstag_1to1_bb0_arrayidx_stall_local = rstag_1to1_bb0_arrayidx_stall_in;
assign local_bb0_arrayidx_stall_in = (|rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_1to1_bb0_arrayidx_stall_local)
		begin
			if (~(rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG))
			begin
				rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= rstag_1to1_bb0_arrayidx_inputs_ready;
			end
		end
		else
		begin
			rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG))
		begin
			rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG <= (local_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFC);
		end
	end
end


// This section implements a staging register.
// 
wire rstag_1to1_bb0_arrayidx2_valid_out;
wire rstag_1to1_bb0_arrayidx2_stall_in;
wire rstag_1to1_bb0_arrayidx2_inputs_ready;
wire rstag_1to1_bb0_arrayidx2_stall_local;
 reg rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG;
wire rstag_1to1_bb0_arrayidx2_combined_valid;
 reg [63:0] rstag_1to1_bb0_arrayidx2_staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_1to1_bb0_arrayidx2;

assign rstag_1to1_bb0_arrayidx2_inputs_ready = local_bb0_arrayidx2_valid_out;
assign rstag_1to1_bb0_arrayidx2 = (rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG ? rstag_1to1_bb0_arrayidx2_staging_reg_NO_SHIFT_REG : (local_bb0_arrayidx2 & 64'hFFFFFFFFFFFFFFFC));
assign rstag_1to1_bb0_arrayidx2_combined_valid = (rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG | rstag_1to1_bb0_arrayidx2_inputs_ready);
assign rstag_1to1_bb0_arrayidx2_valid_out = rstag_1to1_bb0_arrayidx2_combined_valid;
assign rstag_1to1_bb0_arrayidx2_stall_local = rstag_1to1_bb0_arrayidx2_stall_in;
assign local_bb0_arrayidx2_stall_in = (|rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_1to1_bb0_arrayidx2_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_1to1_bb0_arrayidx2_stall_local)
		begin
			if (~(rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG))
			begin
				rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG <= rstag_1to1_bb0_arrayidx2_inputs_ready;
			end
		end
		else
		begin
			rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_1to1_bb0_arrayidx2_staging_valid_NO_SHIFT_REG))
		begin
			rstag_1to1_bb0_arrayidx2_staging_reg_NO_SHIFT_REG <= (local_bb0_arrayidx2 & 64'hFFFFFFFFFFFFFFFC);
		end
	end
end


// Register node:
//  * latency = 2
//  * capacity = 2
 logic rnode_1to3_bb0_arrayidx4_0_valid_out_NO_SHIFT_REG;
 logic rnode_1to3_bb0_arrayidx4_0_stall_in_NO_SHIFT_REG;
 logic [63:0] rnode_1to3_bb0_arrayidx4_0_NO_SHIFT_REG;
 logic rnode_1to3_bb0_arrayidx4_0_reg_3_inputs_ready_NO_SHIFT_REG;
 logic [63:0] rnode_1to3_bb0_arrayidx4_0_reg_3_NO_SHIFT_REG;
 logic rnode_1to3_bb0_arrayidx4_0_valid_out_reg_3_NO_SHIFT_REG;
 logic rnode_1to3_bb0_arrayidx4_0_stall_in_reg_3_NO_SHIFT_REG;
 logic rnode_1to3_bb0_arrayidx4_0_stall_out_reg_3_NO_SHIFT_REG;

acl_data_fifo rnode_1to3_bb0_arrayidx4_0_reg_3_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to3_bb0_arrayidx4_0_reg_3_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to3_bb0_arrayidx4_0_stall_in_reg_3_NO_SHIFT_REG),
	.valid_out(rnode_1to3_bb0_arrayidx4_0_valid_out_reg_3_NO_SHIFT_REG),
	.stall_out(rnode_1to3_bb0_arrayidx4_0_stall_out_reg_3_NO_SHIFT_REG),
	.data_in((local_bb0_arrayidx4 & 64'hFFFFFFFFFFFFFFFC)),
	.data_out(rnode_1to3_bb0_arrayidx4_0_reg_3_NO_SHIFT_REG)
);

defparam rnode_1to3_bb0_arrayidx4_0_reg_3_fifo.DEPTH = 3;
defparam rnode_1to3_bb0_arrayidx4_0_reg_3_fifo.DATA_WIDTH = 64;
defparam rnode_1to3_bb0_arrayidx4_0_reg_3_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to3_bb0_arrayidx4_0_reg_3_fifo.IMPL = "ll_reg";

assign rnode_1to3_bb0_arrayidx4_0_reg_3_inputs_ready_NO_SHIFT_REG = local_bb0_arrayidx4_valid_out;
assign local_bb0_arrayidx4_stall_in = rnode_1to3_bb0_arrayidx4_0_stall_out_reg_3_NO_SHIFT_REG;
assign rnode_1to3_bb0_arrayidx4_0_NO_SHIFT_REG = rnode_1to3_bb0_arrayidx4_0_reg_3_NO_SHIFT_REG;
assign rnode_1to3_bb0_arrayidx4_0_stall_in_reg_3_NO_SHIFT_REG = rnode_1to3_bb0_arrayidx4_0_stall_in_NO_SHIFT_REG;
assign rnode_1to3_bb0_arrayidx4_0_valid_out_NO_SHIFT_REG = rnode_1to3_bb0_arrayidx4_0_valid_out_reg_3_NO_SHIFT_REG;

// This section implements a registered operation.
// 
wire local_bb0_ld__inputs_ready;
 reg local_bb0_ld__valid_out_NO_SHIFT_REG;
wire local_bb0_ld__stall_in;
wire local_bb0_ld__output_regs_ready;
wire local_bb0_ld__fu_stall_out;
wire local_bb0_ld__fu_valid_out;
wire [31:0] local_bb0_ld__lsu_dataout;
 reg [31:0] local_bb0_ld__NO_SHIFT_REG;
wire local_bb0_ld__causedstall;

lsu_top lsu_local_bb0_ld_ (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rstag_1to1_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFC)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_ld__fu_stall_out),
	.i_valid(local_bb0_ld__inputs_ready),
	.i_address((rstag_1to1_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_ld__output_regs_ready)),
	.o_valid(local_bb0_ld__fu_valid_out),
	.o_readdata(local_bb0_ld__lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_ld__active),
	.avm_address(avm_local_bb0_ld__address),
	.avm_read(avm_local_bb0_ld__read),
	.avm_enable(avm_local_bb0_ld__enable),
	.avm_readdata(avm_local_bb0_ld__readdata),
	.avm_write(avm_local_bb0_ld__write),
	.avm_writeack(avm_local_bb0_ld__writeack),
	.avm_burstcount(avm_local_bb0_ld__burstcount),
	.avm_writedata(avm_local_bb0_ld__writedata),
	.avm_byteenable(avm_local_bb0_ld__byteenable),
	.avm_waitrequest(avm_local_bb0_ld__waitrequest),
	.avm_readdatavalid(avm_local_bb0_ld__readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_ld_.AWIDTH = 30;
defparam lsu_local_bb0_ld_.WIDTH_BYTES = 4;
defparam lsu_local_bb0_ld_.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld_.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld_.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb0_ld_.READ = 1;
defparam lsu_local_bb0_ld_.ATOMIC = 0;
defparam lsu_local_bb0_ld_.WIDTH = 32;
defparam lsu_local_bb0_ld_.MWIDTH = 256;
defparam lsu_local_bb0_ld_.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_ld_.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_ld_.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_ld_.MEMORY_SIDE_MEM_LATENCY = 89;
defparam lsu_local_bb0_ld_.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_ld_.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_ld_.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_ld_.NUMBER_BANKS = 1;
defparam lsu_local_bb0_ld_.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_ld_.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_ld_.USEINPUTFIFO = 0;
defparam lsu_local_bb0_ld_.USECACHING = 0;
defparam lsu_local_bb0_ld_.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_ld_.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_ld_.ADDRSPACE = 1;
defparam lsu_local_bb0_ld_.STYLE = "STREAMING";

assign local_bb0_ld__inputs_ready = rstag_1to1_bb0_arrayidx_valid_out;
assign local_bb0_ld__output_regs_ready = (&(~(local_bb0_ld__valid_out_NO_SHIFT_REG) | ~(local_bb0_ld__stall_in)));
assign rstag_1to1_bb0_arrayidx_stall_in = (local_bb0_ld__fu_stall_out | ~(local_bb0_ld__inputs_ready));
assign local_bb0_ld__causedstall = (local_bb0_ld__inputs_ready && (local_bb0_ld__fu_stall_out && !(~(local_bb0_ld__output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_ld__NO_SHIFT_REG <= 'x;
		local_bb0_ld__valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_ld__output_regs_ready)
		begin
			local_bb0_ld__NO_SHIFT_REG <= local_bb0_ld__lsu_dataout;
			local_bb0_ld__valid_out_NO_SHIFT_REG <= local_bb0_ld__fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_ld__stall_in))
			begin
				local_bb0_ld__valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb0_ld__u0_inputs_ready;
 reg local_bb0_ld__u0_valid_out_NO_SHIFT_REG;
wire local_bb0_ld__u0_stall_in;
wire local_bb0_ld__u0_output_regs_ready;
wire local_bb0_ld__u0_fu_stall_out;
wire local_bb0_ld__u0_fu_valid_out;
wire [31:0] local_bb0_ld__u0_lsu_dataout;
 reg [31:0] local_bb0_ld__u0_NO_SHIFT_REG;
wire local_bb0_ld__u0_causedstall;

lsu_top lsu_local_bb0_ld__u0 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rstag_1to1_bb0_arrayidx2 & 64'hFFFFFFFFFFFFFFFC)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_ld__u0_fu_stall_out),
	.i_valid(local_bb0_ld__u0_inputs_ready),
	.i_address((rstag_1to1_bb0_arrayidx2 & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_ld__u0_output_regs_ready)),
	.o_valid(local_bb0_ld__u0_fu_valid_out),
	.o_readdata(local_bb0_ld__u0_lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_ld__u0_active),
	.avm_address(avm_local_bb0_ld__u0_address),
	.avm_read(avm_local_bb0_ld__u0_read),
	.avm_enable(avm_local_bb0_ld__u0_enable),
	.avm_readdata(avm_local_bb0_ld__u0_readdata),
	.avm_write(avm_local_bb0_ld__u0_write),
	.avm_writeack(avm_local_bb0_ld__u0_writeack),
	.avm_burstcount(avm_local_bb0_ld__u0_burstcount),
	.avm_writedata(avm_local_bb0_ld__u0_writedata),
	.avm_byteenable(avm_local_bb0_ld__u0_byteenable),
	.avm_waitrequest(avm_local_bb0_ld__u0_waitrequest),
	.avm_readdatavalid(avm_local_bb0_ld__u0_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_ld__u0.AWIDTH = 30;
defparam lsu_local_bb0_ld__u0.WIDTH_BYTES = 4;
defparam lsu_local_bb0_ld__u0.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld__u0.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld__u0.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb0_ld__u0.READ = 1;
defparam lsu_local_bb0_ld__u0.ATOMIC = 0;
defparam lsu_local_bb0_ld__u0.WIDTH = 32;
defparam lsu_local_bb0_ld__u0.MWIDTH = 256;
defparam lsu_local_bb0_ld__u0.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_ld__u0.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_ld__u0.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_ld__u0.MEMORY_SIDE_MEM_LATENCY = 89;
defparam lsu_local_bb0_ld__u0.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_ld__u0.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_ld__u0.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_ld__u0.NUMBER_BANKS = 1;
defparam lsu_local_bb0_ld__u0.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_ld__u0.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_ld__u0.USEINPUTFIFO = 0;
defparam lsu_local_bb0_ld__u0.USECACHING = 0;
defparam lsu_local_bb0_ld__u0.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_ld__u0.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_ld__u0.ADDRSPACE = 1;
defparam lsu_local_bb0_ld__u0.STYLE = "STREAMING";

assign local_bb0_ld__u0_inputs_ready = rstag_1to1_bb0_arrayidx2_valid_out;
assign local_bb0_ld__u0_output_regs_ready = (&(~(local_bb0_ld__u0_valid_out_NO_SHIFT_REG) | ~(local_bb0_ld__u0_stall_in)));
assign rstag_1to1_bb0_arrayidx2_stall_in = (local_bb0_ld__u0_fu_stall_out | ~(local_bb0_ld__u0_inputs_ready));
assign local_bb0_ld__u0_causedstall = (local_bb0_ld__u0_inputs_ready && (local_bb0_ld__u0_fu_stall_out && !(~(local_bb0_ld__u0_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_ld__u0_NO_SHIFT_REG <= 'x;
		local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_ld__u0_output_regs_ready)
		begin
			local_bb0_ld__u0_NO_SHIFT_REG <= local_bb0_ld__u0_lsu_dataout;
			local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= local_bb0_ld__u0_fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_ld__u0_stall_in))
			begin
				local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_3to3_bb0_ld__valid_out;
wire rstag_3to3_bb0_ld__stall_in;
wire rstag_3to3_bb0_ld__inputs_ready;
wire rstag_3to3_bb0_ld__stall_local;
 reg rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb0_ld__combined_valid;
 reg [31:0] rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG;
wire [31:0] rstag_3to3_bb0_ld_;

assign rstag_3to3_bb0_ld__inputs_ready = local_bb0_ld__valid_out_NO_SHIFT_REG;
assign rstag_3to3_bb0_ld_ = (rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG ? rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG : local_bb0_ld__NO_SHIFT_REG);
assign rstag_3to3_bb0_ld__combined_valid = (rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG | rstag_3to3_bb0_ld__inputs_ready);
assign rstag_3to3_bb0_ld__valid_out = rstag_3to3_bb0_ld__combined_valid;
assign rstag_3to3_bb0_ld__stall_local = rstag_3to3_bb0_ld__stall_in;
assign local_bb0_ld__stall_in = (|rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_3to3_bb0_ld__stall_local)
		begin
			if (~(rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= rstag_3to3_bb0_ld__inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG))
		begin
			rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG <= local_bb0_ld__NO_SHIFT_REG;
		end
	end
end


// This section implements a staging register.
// 
wire rstag_3to3_bb0_ld__u0_valid_out;
wire rstag_3to3_bb0_ld__u0_stall_in;
wire rstag_3to3_bb0_ld__u0_inputs_ready;
wire rstag_3to3_bb0_ld__u0_stall_local;
 reg rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb0_ld__u0_combined_valid;
 reg [31:0] rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG;
wire [31:0] rstag_3to3_bb0_ld__u0;

assign rstag_3to3_bb0_ld__u0_inputs_ready = local_bb0_ld__u0_valid_out_NO_SHIFT_REG;
assign rstag_3to3_bb0_ld__u0 = (rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG ? rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG : local_bb0_ld__u0_NO_SHIFT_REG);
assign rstag_3to3_bb0_ld__u0_combined_valid = (rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG | rstag_3to3_bb0_ld__u0_inputs_ready);
assign rstag_3to3_bb0_ld__u0_valid_out = rstag_3to3_bb0_ld__u0_combined_valid;
assign rstag_3to3_bb0_ld__u0_stall_local = rstag_3to3_bb0_ld__u0_stall_in;
assign local_bb0_ld__u0_stall_in = (|rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_3to3_bb0_ld__u0_stall_local)
		begin
			if (~(rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= rstag_3to3_bb0_ld__u0_inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG))
		begin
			rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG <= local_bb0_ld__u0_NO_SHIFT_REG;
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_add_valid_out;
wire local_bb0_add_stall_in;
wire local_bb0_add_inputs_ready;
wire local_bb0_add_stall_local;
wire [31:0] local_bb0_add;

assign local_bb0_add_inputs_ready = (rstag_3to3_bb0_ld__u0_valid_out & rstag_3to3_bb0_ld__valid_out);
assign local_bb0_add = (rstag_3to3_bb0_ld__u0 + rstag_3to3_bb0_ld_);
assign local_bb0_add_valid_out = local_bb0_add_inputs_ready;
assign local_bb0_add_stall_local = local_bb0_add_stall_in;
assign rstag_3to3_bb0_ld__u0_stall_in = (local_bb0_add_stall_local | ~(local_bb0_add_inputs_ready));
assign rstag_3to3_bb0_ld__stall_in = (local_bb0_add_stall_local | ~(local_bb0_add_inputs_ready));

// This section implements a staging register.
// 
wire rstag_3to3_bb0_add_valid_out;
wire rstag_3to3_bb0_add_stall_in;
wire rstag_3to3_bb0_add_inputs_ready;
wire rstag_3to3_bb0_add_stall_local;
 reg rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb0_add_combined_valid;
 reg [31:0] rstag_3to3_bb0_add_staging_reg_NO_SHIFT_REG;
wire [31:0] rstag_3to3_bb0_add;

assign rstag_3to3_bb0_add_inputs_ready = local_bb0_add_valid_out;
assign rstag_3to3_bb0_add = (rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG ? rstag_3to3_bb0_add_staging_reg_NO_SHIFT_REG : local_bb0_add);
assign rstag_3to3_bb0_add_combined_valid = (rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG | rstag_3to3_bb0_add_inputs_ready);
assign rstag_3to3_bb0_add_valid_out = rstag_3to3_bb0_add_combined_valid;
assign rstag_3to3_bb0_add_stall_local = rstag_3to3_bb0_add_stall_in;
assign local_bb0_add_stall_in = (|rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_3to3_bb0_add_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_3to3_bb0_add_stall_local)
		begin
			if (~(rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG <= rstag_3to3_bb0_add_inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_3to3_bb0_add_staging_valid_NO_SHIFT_REG))
		begin
			rstag_3to3_bb0_add_staging_reg_NO_SHIFT_REG <= local_bb0_add;
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb0_st_add_inputs_ready;
 reg local_bb0_st_add_valid_out_NO_SHIFT_REG;
wire local_bb0_st_add_stall_in;
wire local_bb0_st_add_output_regs_ready;
wire local_bb0_st_add_fu_stall_out;
wire local_bb0_st_add_fu_valid_out;
wire local_bb0_st_add_causedstall;

lsu_top lsu_local_bb0_st_add (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rnode_1to3_bb0_arrayidx4_0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_st_add_fu_stall_out),
	.i_valid(local_bb0_st_add_inputs_ready),
	.i_address((rnode_1to3_bb0_arrayidx4_0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(rstag_3to3_bb0_add),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_st_add_output_regs_ready)),
	.o_valid(local_bb0_st_add_fu_valid_out),
	.o_readdata(),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_st_add_active),
	.avm_address(avm_local_bb0_st_add_address),
	.avm_read(avm_local_bb0_st_add_read),
	.avm_enable(avm_local_bb0_st_add_enable),
	.avm_readdata(avm_local_bb0_st_add_readdata),
	.avm_write(avm_local_bb0_st_add_write),
	.avm_writeack(avm_local_bb0_st_add_writeack),
	.avm_burstcount(avm_local_bb0_st_add_burstcount),
	.avm_writedata(avm_local_bb0_st_add_writedata),
	.avm_byteenable(avm_local_bb0_st_add_byteenable),
	.avm_waitrequest(avm_local_bb0_st_add_waitrequest),
	.avm_readdatavalid(avm_local_bb0_st_add_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_st_add.AWIDTH = 30;
defparam lsu_local_bb0_st_add.WIDTH_BYTES = 4;
defparam lsu_local_bb0_st_add.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_st_add.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_st_add.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb0_st_add.READ = 0;
defparam lsu_local_bb0_st_add.ATOMIC = 0;
defparam lsu_local_bb0_st_add.WIDTH = 32;
defparam lsu_local_bb0_st_add.MWIDTH = 256;
defparam lsu_local_bb0_st_add.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_st_add.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_st_add.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_st_add.MEMORY_SIDE_MEM_LATENCY = 32;
defparam lsu_local_bb0_st_add.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_st_add.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_st_add.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_st_add.NUMBER_BANKS = 1;
defparam lsu_local_bb0_st_add.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_st_add.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_st_add.USEINPUTFIFO = 0;
defparam lsu_local_bb0_st_add.USECACHING = 0;
defparam lsu_local_bb0_st_add.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_st_add.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_st_add.ADDRSPACE = 1;
defparam lsu_local_bb0_st_add.STYLE = "STREAMING";
defparam lsu_local_bb0_st_add.USE_BYTE_EN = 0;

assign local_bb0_st_add_inputs_ready = (rnode_1to3_bb0_arrayidx4_0_valid_out_NO_SHIFT_REG & rstag_3to3_bb0_add_valid_out);
assign local_bb0_st_add_output_regs_ready = (&(~(local_bb0_st_add_valid_out_NO_SHIFT_REG) | ~(local_bb0_st_add_stall_in)));
assign rnode_1to3_bb0_arrayidx4_0_stall_in_NO_SHIFT_REG = (local_bb0_st_add_fu_stall_out | ~(local_bb0_st_add_inputs_ready));
assign rstag_3to3_bb0_add_stall_in = (local_bb0_st_add_fu_stall_out | ~(local_bb0_st_add_inputs_ready));
assign local_bb0_st_add_causedstall = (local_bb0_st_add_inputs_ready && (local_bb0_st_add_fu_stall_out && !(~(local_bb0_st_add_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_st_add_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_st_add_output_regs_ready)
		begin
			local_bb0_st_add_valid_out_NO_SHIFT_REG <= local_bb0_st_add_fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_st_add_stall_in))
			begin
				local_bb0_st_add_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_5to5_bb0_st_add_valid_out;
wire rstag_5to5_bb0_st_add_stall_in;
wire rstag_5to5_bb0_st_add_inputs_ready;
wire rstag_5to5_bb0_st_add_stall_local;
 reg rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG;
wire rstag_5to5_bb0_st_add_combined_valid;

assign rstag_5to5_bb0_st_add_inputs_ready = local_bb0_st_add_valid_out_NO_SHIFT_REG;
assign rstag_5to5_bb0_st_add_combined_valid = (rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG | rstag_5to5_bb0_st_add_inputs_ready);
assign rstag_5to5_bb0_st_add_valid_out = rstag_5to5_bb0_st_add_combined_valid;
assign rstag_5to5_bb0_st_add_stall_local = rstag_5to5_bb0_st_add_stall_in;
assign local_bb0_st_add_stall_in = (|rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (rstag_5to5_bb0_st_add_stall_local)
		begin
			if (~(rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG))
			begin
				rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG <= rstag_5to5_bb0_st_add_inputs_ready;
			end
		end
		else
		begin
			rstag_5to5_bb0_st_add_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
	end
end


// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
wire branch_var__output_regs_ready;

assign branch_var__inputs_ready = rstag_5to5_bb0_st_add_valid_out;
assign branch_var__output_regs_ready = ~(stall_in);
assign rstag_5to5_bb0_st_add_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign valid_out = branch_var__inputs_ready;

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_add_function
	(
		input 		clock,
		input 		resetn,
		input [31:0] 		input_global_id_0,
		output 		stall_out,
		input 		valid_in,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		output 		avm_local_bb0_ld__enable,
		input [255:0] 		avm_local_bb0_ld__readdata,
		input 		avm_local_bb0_ld__readdatavalid,
		input 		avm_local_bb0_ld__waitrequest,
		output [29:0] 		avm_local_bb0_ld__address,
		output 		avm_local_bb0_ld__read,
		output 		avm_local_bb0_ld__write,
		input 		avm_local_bb0_ld__writeack,
		output [255:0] 		avm_local_bb0_ld__writedata,
		output [31:0] 		avm_local_bb0_ld__byteenable,
		output [4:0] 		avm_local_bb0_ld__burstcount,
		output 		avm_local_bb0_ld__u0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_readdata,
		input 		avm_local_bb0_ld__u0_readdatavalid,
		input 		avm_local_bb0_ld__u0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_address,
		output 		avm_local_bb0_ld__u0_read,
		output 		avm_local_bb0_ld__u0_write,
		input 		avm_local_bb0_ld__u0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_burstcount,
		output 		avm_local_bb0_st_add_enable,
		input [255:0] 		avm_local_bb0_st_add_readdata,
		input 		avm_local_bb0_st_add_readdatavalid,
		input 		avm_local_bb0_st_add_waitrequest,
		output [29:0] 		avm_local_bb0_st_add_address,
		output 		avm_local_bb0_st_add_read,
		output 		avm_local_bb0_st_add_write,
		input 		avm_local_bb0_st_add_writeack,
		output [255:0] 		avm_local_bb0_st_add_writedata,
		output [31:0] 		avm_local_bb0_st_add_byteenable,
		output [4:0] 		avm_local_bb0_st_add_burstcount,
		input 		clock2x,
		input 		start,
		input [63:0] 		input__m1,
		input [31:0] 		input_global_size_0,
		input [63:0] 		input__m2,
		input [63:0] 		input__add,
		output reg 		has_a_write_pending,
		output reg 		has_a_lsu_active
	);


wire [31:0] cur_cycle;
wire bb_0_stall_out;
wire bb_0_valid_out;
wire bb_0_local_bb0_ld__active;
wire bb_0_local_bb0_ld__u0_active;
wire bb_0_local_bb0_st_add_active;
wire writes_pending;
wire [2:0] lsus_active;

kernel_add_basic_block_0 kernel_add_basic_block_0 (
	.clock(clock),
	.resetn(resetn),
	.input__m1(input__m1),
	.input_global_size_0(input_global_size_0),
	.input__m2(input__m2),
	.input__add(input__add),
	.valid_in(valid_in),
	.stall_out(bb_0_stall_out),
	.input_global_id_0(input_global_id_0),
	.valid_out(bb_0_valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size),
	.start(start),
	.avm_local_bb0_ld__enable(avm_local_bb0_ld__enable),
	.avm_local_bb0_ld__readdata(avm_local_bb0_ld__readdata),
	.avm_local_bb0_ld__readdatavalid(avm_local_bb0_ld__readdatavalid),
	.avm_local_bb0_ld__waitrequest(avm_local_bb0_ld__waitrequest),
	.avm_local_bb0_ld__address(avm_local_bb0_ld__address),
	.avm_local_bb0_ld__read(avm_local_bb0_ld__read),
	.avm_local_bb0_ld__write(avm_local_bb0_ld__write),
	.avm_local_bb0_ld__writeack(avm_local_bb0_ld__writeack),
	.avm_local_bb0_ld__writedata(avm_local_bb0_ld__writedata),
	.avm_local_bb0_ld__byteenable(avm_local_bb0_ld__byteenable),
	.avm_local_bb0_ld__burstcount(avm_local_bb0_ld__burstcount),
	.local_bb0_ld__active(bb_0_local_bb0_ld__active),
	.clock2x(clock2x),
	.avm_local_bb0_ld__u0_enable(avm_local_bb0_ld__u0_enable),
	.avm_local_bb0_ld__u0_readdata(avm_local_bb0_ld__u0_readdata),
	.avm_local_bb0_ld__u0_readdatavalid(avm_local_bb0_ld__u0_readdatavalid),
	.avm_local_bb0_ld__u0_waitrequest(avm_local_bb0_ld__u0_waitrequest),
	.avm_local_bb0_ld__u0_address(avm_local_bb0_ld__u0_address),
	.avm_local_bb0_ld__u0_read(avm_local_bb0_ld__u0_read),
	.avm_local_bb0_ld__u0_write(avm_local_bb0_ld__u0_write),
	.avm_local_bb0_ld__u0_writeack(avm_local_bb0_ld__u0_writeack),
	.avm_local_bb0_ld__u0_writedata(avm_local_bb0_ld__u0_writedata),
	.avm_local_bb0_ld__u0_byteenable(avm_local_bb0_ld__u0_byteenable),
	.avm_local_bb0_ld__u0_burstcount(avm_local_bb0_ld__u0_burstcount),
	.local_bb0_ld__u0_active(bb_0_local_bb0_ld__u0_active),
	.avm_local_bb0_st_add_enable(avm_local_bb0_st_add_enable),
	.avm_local_bb0_st_add_readdata(avm_local_bb0_st_add_readdata),
	.avm_local_bb0_st_add_readdatavalid(avm_local_bb0_st_add_readdatavalid),
	.avm_local_bb0_st_add_waitrequest(avm_local_bb0_st_add_waitrequest),
	.avm_local_bb0_st_add_address(avm_local_bb0_st_add_address),
	.avm_local_bb0_st_add_read(avm_local_bb0_st_add_read),
	.avm_local_bb0_st_add_write(avm_local_bb0_st_add_write),
	.avm_local_bb0_st_add_writeack(avm_local_bb0_st_add_writeack),
	.avm_local_bb0_st_add_writedata(avm_local_bb0_st_add_writedata),
	.avm_local_bb0_st_add_byteenable(avm_local_bb0_st_add_byteenable),
	.avm_local_bb0_st_add_burstcount(avm_local_bb0_st_add_burstcount),
	.local_bb0_st_add_active(bb_0_local_bb0_st_add_active)
);


kernel_add_sys_cycle_time system_cycle_time_module (
	.clock(clock),
	.resetn(resetn),
	.cur_cycle(cur_cycle)
);


assign valid_out = bb_0_valid_out;
assign stall_out = bb_0_stall_out;
assign writes_pending = bb_0_local_bb0_st_add_active;
assign lsus_active[0] = bb_0_local_bb0_ld__active;
assign lsus_active[1] = bb_0_local_bb0_ld__u0_active;
assign lsus_active[2] = bb_0_local_bb0_st_add_active;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		has_a_write_pending <= 1'b0;
		has_a_lsu_active <= 1'b0;
	end
	else
	begin
		has_a_write_pending <= (|writes_pending);
		has_a_lsu_active <= (|lsus_active);
	end
end

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_add_function_wrapper
	(
		input 		clock,
		input 		resetn,
		input 		clock2x,
		input 		local_router_hang,
		input 		avs_cra_enable,
		input 		avs_cra_read,
		input 		avs_cra_write,
		input [3:0] 		avs_cra_address,
		input [63:0] 		avs_cra_writedata,
		input [7:0] 		avs_cra_byteenable,
		output reg [63:0] 		avs_cra_readdata,
		output reg 		avs_cra_readdatavalid,
		output 		cra_irq,
		output 		avm_local_bb0_ld__inst0_enable,
		input [255:0] 		avm_local_bb0_ld__inst0_readdata,
		input 		avm_local_bb0_ld__inst0_readdatavalid,
		input 		avm_local_bb0_ld__inst0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__inst0_address,
		output 		avm_local_bb0_ld__inst0_read,
		output 		avm_local_bb0_ld__inst0_write,
		input 		avm_local_bb0_ld__inst0_writeack,
		output [255:0] 		avm_local_bb0_ld__inst0_writedata,
		output [31:0] 		avm_local_bb0_ld__inst0_byteenable,
		output [4:0] 		avm_local_bb0_ld__inst0_burstcount,
		output 		avm_local_bb0_ld__u0_inst0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_inst0_readdata,
		input 		avm_local_bb0_ld__u0_inst0_readdatavalid,
		input 		avm_local_bb0_ld__u0_inst0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_inst0_address,
		output 		avm_local_bb0_ld__u0_inst0_read,
		output 		avm_local_bb0_ld__u0_inst0_write,
		input 		avm_local_bb0_ld__u0_inst0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_inst0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_inst0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_inst0_burstcount,
		output 		avm_local_bb0_st_add_inst0_enable,
		input [255:0] 		avm_local_bb0_st_add_inst0_readdata,
		input 		avm_local_bb0_st_add_inst0_readdatavalid,
		input 		avm_local_bb0_st_add_inst0_waitrequest,
		output [29:0] 		avm_local_bb0_st_add_inst0_address,
		output 		avm_local_bb0_st_add_inst0_read,
		output 		avm_local_bb0_st_add_inst0_write,
		input 		avm_local_bb0_st_add_inst0_writeack,
		output [255:0] 		avm_local_bb0_st_add_inst0_writedata,
		output [31:0] 		avm_local_bb0_st_add_inst0_byteenable,
		output [4:0] 		avm_local_bb0_st_add_inst0_burstcount
	);

// Responsible for interfacing a kernel with the outside world. It comprises a
// slave interface to specify the kernel arguments and retain kernel status. 

// This section of the wrapper implements the slave interface.
// twoXclock_consumer uses clock2x, even if nobody inside the kernel does. Keeps interface to acl_iface consistent for all kernels.
 reg start_NO_SHIFT_REG;
 reg started_NO_SHIFT_REG;
wire finish;
 reg [31:0] status_NO_SHIFT_REG;
wire has_a_write_pending;
wire has_a_lsu_active;
 reg [191:0] kernel_arguments_NO_SHIFT_REG;
 reg twoXclock_consumer_NO_SHIFT_REG /* synthesis  preserve  noprune  */;
 reg [31:0] workgroup_size_NO_SHIFT_REG;
 reg [31:0] global_size_NO_SHIFT_REG[2:0];
 reg [31:0] num_groups_NO_SHIFT_REG[2:0];
 reg [31:0] local_size_NO_SHIFT_REG[2:0];
 reg [31:0] work_dim_NO_SHIFT_REG;
 reg [31:0] global_offset_NO_SHIFT_REG[2:0];
 reg [63:0] profile_data_NO_SHIFT_REG;
 reg [31:0] profile_ctrl_NO_SHIFT_REG;
 reg [63:0] profile_start_cycle_NO_SHIFT_REG;
 reg [63:0] profile_stop_cycle_NO_SHIFT_REG;
wire dispatched_all_groups;
wire [31:0] group_id_tmp[2:0];
wire [31:0] global_id_base_out[2:0];
wire start_out;
wire [31:0] local_id[0:0][2:0];
wire [31:0] global_id[0:0][2:0];
wire [31:0] group_id[0:0][2:0];
wire iter_valid_in;
wire iter_stall_out;
wire stall_in;
wire stall_out;
wire valid_in;
wire valid_out;

always @(posedge clock2x or negedge resetn)
begin
	if (~(resetn))
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b1;
	end
end



// Work group dispatcher is responsible for issuing work-groups to id iterator(s)
acl_work_group_dispatcher group_dispatcher (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.num_groups(num_groups_NO_SHIFT_REG),
	.local_size(local_size_NO_SHIFT_REG),
	.stall_in(iter_stall_out),
	.valid_out(iter_valid_in),
	.group_id_out(group_id_tmp),
	.global_id_base_out(global_id_base_out),
	.start_out(start_out),
	.dispatched_all_groups(dispatched_all_groups)
);

defparam group_dispatcher.NUM_COPIES = 1;
defparam group_dispatcher.RUN_FOREVER = 0;


// This section of the wrapper implements an Avalon Slave Interface used to configure a kernel invocation.
// The few words words contain the status and the workgroup size registers.
// The remaining addressable space is reserved for kernel arguments.
 reg [63:0] cra_readdata_st1_NO_SHIFT_REG;
 reg [3:0] cra_addr_st1_NO_SHIFT_REG;
 reg cra_read_st1_NO_SHIFT_REG;
wire [63:0] bitenable;

assign bitenable[7:0] = (avs_cra_byteenable[0] ? 8'hFF : 8'h0);
assign bitenable[15:8] = (avs_cra_byteenable[1] ? 8'hFF : 8'h0);
assign bitenable[23:16] = (avs_cra_byteenable[2] ? 8'hFF : 8'h0);
assign bitenable[31:24] = (avs_cra_byteenable[3] ? 8'hFF : 8'h0);
assign bitenable[39:32] = (avs_cra_byteenable[4] ? 8'hFF : 8'h0);
assign bitenable[47:40] = (avs_cra_byteenable[5] ? 8'hFF : 8'h0);
assign bitenable[55:48] = (avs_cra_byteenable[6] ? 8'hFF : 8'h0);
assign bitenable[63:56] = (avs_cra_byteenable[7] ? 8'hFF : 8'h0);
assign cra_irq = (status_NO_SHIFT_REG[1] | status_NO_SHIFT_REG[3]);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		start_NO_SHIFT_REG <= 1'b0;
		started_NO_SHIFT_REG <= 1'b0;
		kernel_arguments_NO_SHIFT_REG <= 192'h0;
		status_NO_SHIFT_REG <= 32'h30000;
		profile_ctrl_NO_SHIFT_REG <= 32'h4;
		profile_start_cycle_NO_SHIFT_REG <= 64'h0;
		profile_stop_cycle_NO_SHIFT_REG <= 64'hFFFFFFFFFFFFFFFF;
		work_dim_NO_SHIFT_REG <= 32'h0;
		workgroup_size_NO_SHIFT_REG <= 32'h0;
		global_size_NO_SHIFT_REG[0] <= 32'h0;
		global_size_NO_SHIFT_REG[1] <= 32'h0;
		global_size_NO_SHIFT_REG[2] <= 32'h0;
		num_groups_NO_SHIFT_REG[0] <= 32'h0;
		num_groups_NO_SHIFT_REG[1] <= 32'h0;
		num_groups_NO_SHIFT_REG[2] <= 32'h0;
		local_size_NO_SHIFT_REG[0] <= 32'h0;
		local_size_NO_SHIFT_REG[1] <= 32'h0;
		local_size_NO_SHIFT_REG[2] <= 32'h0;
		global_offset_NO_SHIFT_REG[0] <= 32'h0;
		global_offset_NO_SHIFT_REG[1] <= 32'h0;
		global_offset_NO_SHIFT_REG[2] <= 32'h0;
	end
	else
	begin
		if (avs_cra_write)
		begin
			case (avs_cra_address)
				4'h0:
				begin
					status_NO_SHIFT_REG[31:16] <= 16'h3;
					status_NO_SHIFT_REG[15:0] <= ((status_NO_SHIFT_REG[15:0] & ~(bitenable[15:0])) | (avs_cra_writedata[15:0] & bitenable[15:0]));
				end

				4'h1:
				begin
					profile_ctrl_NO_SHIFT_REG <= ((profile_ctrl_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h3:
				begin
					profile_start_cycle_NO_SHIFT_REG[31:0] <= ((profile_start_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_start_cycle_NO_SHIFT_REG[63:32] <= ((profile_start_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h4:
				begin
					profile_stop_cycle_NO_SHIFT_REG[31:0] <= ((profile_stop_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_stop_cycle_NO_SHIFT_REG[63:32] <= ((profile_stop_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h5:
				begin
					work_dim_NO_SHIFT_REG <= ((work_dim_NO_SHIFT_REG & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					workgroup_size_NO_SHIFT_REG <= ((workgroup_size_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h6:
				begin
					global_size_NO_SHIFT_REG[0] <= ((global_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_size_NO_SHIFT_REG[1] <= ((global_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h7:
				begin
					global_size_NO_SHIFT_REG[2] <= ((global_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[0] <= ((num_groups_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h8:
				begin
					num_groups_NO_SHIFT_REG[1] <= ((num_groups_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[2] <= ((num_groups_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h9:
				begin
					local_size_NO_SHIFT_REG[0] <= ((local_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					local_size_NO_SHIFT_REG[1] <= ((local_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hA:
				begin
					local_size_NO_SHIFT_REG[2] <= ((local_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[0] <= ((global_offset_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hB:
				begin
					global_offset_NO_SHIFT_REG[1] <= ((global_offset_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[2] <= ((global_offset_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hC:
				begin
					kernel_arguments_NO_SHIFT_REG[31:0] <= ((kernel_arguments_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[63:32] <= ((kernel_arguments_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hD:
				begin
					kernel_arguments_NO_SHIFT_REG[95:64] <= ((kernel_arguments_NO_SHIFT_REG[95:64] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[127:96] <= ((kernel_arguments_NO_SHIFT_REG[127:96] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hE:
				begin
					kernel_arguments_NO_SHIFT_REG[159:128] <= ((kernel_arguments_NO_SHIFT_REG[159:128] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[191:160] <= ((kernel_arguments_NO_SHIFT_REG[191:160] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				default:
				begin
				end

			endcase
		end
		else
		begin
			if (status_NO_SHIFT_REG[0])
			begin
				start_NO_SHIFT_REG <= 1'b1;
			end
			if (start_NO_SHIFT_REG)
			begin
				status_NO_SHIFT_REG[0] <= 1'b0;
				started_NO_SHIFT_REG <= 1'b1;
			end
			if (started_NO_SHIFT_REG)
			begin
				start_NO_SHIFT_REG <= 1'b0;
			end
			if (finish)
			begin
				status_NO_SHIFT_REG[1] <= 1'b1;
				started_NO_SHIFT_REG <= 1'b0;
			end
		end
		status_NO_SHIFT_REG[11] <= 1'b0;
		status_NO_SHIFT_REG[12] <= (|has_a_lsu_active);
		status_NO_SHIFT_REG[13] <= (|has_a_write_pending);
		status_NO_SHIFT_REG[14] <= (|valid_in);
		status_NO_SHIFT_REG[15] <= started_NO_SHIFT_REG;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cra_read_st1_NO_SHIFT_REG <= 1'b0;
		cra_addr_st1_NO_SHIFT_REG <= 4'h0;
		cra_readdata_st1_NO_SHIFT_REG <= 64'h0;
	end
	else
	begin
		cra_read_st1_NO_SHIFT_REG <= avs_cra_read;
		cra_addr_st1_NO_SHIFT_REG <= avs_cra_address;
		case (avs_cra_address)
			4'h0:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= status_NO_SHIFT_REG;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h1:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= 'x;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h2:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h3:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h4:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			default:
			begin
				cra_readdata_st1_NO_SHIFT_REG <= status_NO_SHIFT_REG;
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		avs_cra_readdatavalid <= 1'b0;
		avs_cra_readdata <= 64'h0;
	end
	else
	begin
		avs_cra_readdatavalid <= cra_read_st1_NO_SHIFT_REG;
		case (cra_addr_st1_NO_SHIFT_REG)
			4'h2:
			begin
				avs_cra_readdata[63:0] <= profile_data_NO_SHIFT_REG;
			end

			default:
			begin
				avs_cra_readdata <= cra_readdata_st1_NO_SHIFT_REG;
			end

		endcase
	end
end


// Handshaking signals used to control data through the pipeline

// Determine when the kernel is finished.
acl_kernel_finish_detector kernel_finish_detector (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.wg_size(workgroup_size_NO_SHIFT_REG),
	.wg_dispatch_valid_out(iter_valid_in),
	.wg_dispatch_stall_in(iter_stall_out),
	.dispatched_all_groups(dispatched_all_groups),
	.kernel_copy_valid_out(valid_out),
	.kernel_copy_stall_in(stall_in),
	.pending_writes(has_a_write_pending),
	.finish(finish)
);

defparam kernel_finish_detector.TESSELLATION_SIZE = 0;
defparam kernel_finish_detector.NUM_COPIES = 1;
defparam kernel_finish_detector.WG_SIZE_W = 32;

assign stall_in = 1'b0;

// Creating ID iterator and kernel instance for every requested kernel copy

// ID iterator is responsible for iterating over all local ids for given work-groups
acl_id_iterator id_iter_inst0 (
	.clock(clock),
	.resetn(resetn),
	.start(start_out),
	.valid_in(iter_valid_in),
	.stall_out(iter_stall_out),
	.stall_in(stall_out),
	.valid_out(valid_in),
	.group_id_in(group_id_tmp),
	.global_id_base_in(global_id_base_out),
	.local_size(local_size_NO_SHIFT_REG),
	.global_size(global_size_NO_SHIFT_REG),
	.local_id(local_id[0]),
	.global_id(global_id[0]),
	.group_id(group_id[0])
);

defparam id_iter_inst0.LOCAL_WIDTH_X = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Y = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Z = 32;


// This section instantiates a kernel function block
kernel_add_function kernel_add_function_inst0 (
	.clock(clock),
	.resetn(resetn),
	.input_global_id_0(global_id[0][0]),
	.stall_out(stall_out),
	.valid_in(valid_in),
	.valid_out(valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size_NO_SHIFT_REG),
	.avm_local_bb0_ld__enable(avm_local_bb0_ld__inst0_enable),
	.avm_local_bb0_ld__readdata(avm_local_bb0_ld__inst0_readdata),
	.avm_local_bb0_ld__readdatavalid(avm_local_bb0_ld__inst0_readdatavalid),
	.avm_local_bb0_ld__waitrequest(avm_local_bb0_ld__inst0_waitrequest),
	.avm_local_bb0_ld__address(avm_local_bb0_ld__inst0_address),
	.avm_local_bb0_ld__read(avm_local_bb0_ld__inst0_read),
	.avm_local_bb0_ld__write(avm_local_bb0_ld__inst0_write),
	.avm_local_bb0_ld__writeack(avm_local_bb0_ld__inst0_writeack),
	.avm_local_bb0_ld__writedata(avm_local_bb0_ld__inst0_writedata),
	.avm_local_bb0_ld__byteenable(avm_local_bb0_ld__inst0_byteenable),
	.avm_local_bb0_ld__burstcount(avm_local_bb0_ld__inst0_burstcount),
	.avm_local_bb0_ld__u0_enable(avm_local_bb0_ld__u0_inst0_enable),
	.avm_local_bb0_ld__u0_readdata(avm_local_bb0_ld__u0_inst0_readdata),
	.avm_local_bb0_ld__u0_readdatavalid(avm_local_bb0_ld__u0_inst0_readdatavalid),
	.avm_local_bb0_ld__u0_waitrequest(avm_local_bb0_ld__u0_inst0_waitrequest),
	.avm_local_bb0_ld__u0_address(avm_local_bb0_ld__u0_inst0_address),
	.avm_local_bb0_ld__u0_read(avm_local_bb0_ld__u0_inst0_read),
	.avm_local_bb0_ld__u0_write(avm_local_bb0_ld__u0_inst0_write),
	.avm_local_bb0_ld__u0_writeack(avm_local_bb0_ld__u0_inst0_writeack),
	.avm_local_bb0_ld__u0_writedata(avm_local_bb0_ld__u0_inst0_writedata),
	.avm_local_bb0_ld__u0_byteenable(avm_local_bb0_ld__u0_inst0_byteenable),
	.avm_local_bb0_ld__u0_burstcount(avm_local_bb0_ld__u0_inst0_burstcount),
	.avm_local_bb0_st_add_enable(avm_local_bb0_st_add_inst0_enable),
	.avm_local_bb0_st_add_readdata(avm_local_bb0_st_add_inst0_readdata),
	.avm_local_bb0_st_add_readdatavalid(avm_local_bb0_st_add_inst0_readdatavalid),
	.avm_local_bb0_st_add_waitrequest(avm_local_bb0_st_add_inst0_waitrequest),
	.avm_local_bb0_st_add_address(avm_local_bb0_st_add_inst0_address),
	.avm_local_bb0_st_add_read(avm_local_bb0_st_add_inst0_read),
	.avm_local_bb0_st_add_write(avm_local_bb0_st_add_inst0_write),
	.avm_local_bb0_st_add_writeack(avm_local_bb0_st_add_inst0_writeack),
	.avm_local_bb0_st_add_writedata(avm_local_bb0_st_add_inst0_writedata),
	.avm_local_bb0_st_add_byteenable(avm_local_bb0_st_add_inst0_byteenable),
	.avm_local_bb0_st_add_burstcount(avm_local_bb0_st_add_inst0_burstcount),
	.clock2x(clock2x),
	.start(start_out),
	.input__m1(kernel_arguments_NO_SHIFT_REG[63:0]),
	.input_global_size_0(global_size_NO_SHIFT_REG[0]),
	.input__m2(kernel_arguments_NO_SHIFT_REG[127:64]),
	.input__add(kernel_arguments_NO_SHIFT_REG[191:128]),
	.has_a_write_pending(has_a_write_pending),
	.has_a_lsu_active(has_a_lsu_active)
);



endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_add_sys_cycle_time
	(
		input 		clock,
		input 		resetn,
		output [31:0] 		cur_cycle
	);


 reg [31:0] cur_count_NO_SHIFT_REG;

assign cur_cycle = cur_count_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cur_count_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		cur_count_NO_SHIFT_REG <= (cur_count_NO_SHIFT_REG + 32'h1);
	end
end

endmodule

// (C) 1992-2015 Altera Corporation. All rights reserved.                         
// Your use of Altera Corporation's design tools, logic functions and other       
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Altera MegaCore Function License Agreement, or other applicable     
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Altera and sold by   
// Altera or its authorized distributors.  Please refer to the applicable         
// agreement for further details.                                                 
    

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_basic_block_0
	(
		input 		clock,
		input 		resetn,
		input 		start,
		input [31:0] 		input_size,
		input 		valid_in,
		output 		stall_out,
		input [31:0] 		input_global_id_0,
		output 		valid_out,
		input 		stall_in,
		output 		lvb_bb0_cmp4_NEG,
		output [31:0] 		lvb_input_global_id_0,
		input [31:0] 		workgroup_size
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((&valid_in) & ~((|stall_out)));
assign _exit = ((&valid_out) & ~((|stall_in)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in_0;
 reg merge_node_valid_out_0_NO_SHIFT_REG;
wire merge_node_stall_in_1;
 reg merge_node_valid_out_1_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_global_id_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] local_lvm_input_global_id_0_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = ((merge_node_stall_in_0 & merge_node_valid_out_0_NO_SHIFT_REG) | (merge_node_stall_in_1 & merge_node_valid_out_1_NO_SHIFT_REG));
assign stall_out = merge_node_valid_in_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_staging_reg_NO_SHIFT_REG | valid_in))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_global_id_0_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_staging_reg_NO_SHIFT_REG))
			begin
				input_global_id_0_staging_reg_NO_SHIFT_REG <= input_global_id_0;
				merge_node_valid_in_staging_reg_NO_SHIFT_REG <= valid_in;
			end
		end
		else
		begin
			merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_0_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_1_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in_0))
			begin
				merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_1))
			begin
				merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements a registered operation.
// 
wire local_bb0_cmp4_NEG_inputs_ready;
 reg local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG;
 reg local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG;
wire local_bb0_cmp4_NEG_stall_in;
wire local_bb0_cmp4_NEG_output_regs_ready;
 reg local_bb0_cmp4_NEG_NO_SHIFT_REG;
wire local_bb0_cmp4_NEG_causedstall;

assign local_bb0_cmp4_NEG_inputs_ready = merge_node_valid_out_0_NO_SHIFT_REG;
assign local_bb0_cmp4_NEG_output_regs_ready = (~(local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG) & (&(~(local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG) | ~(local_bb0_cmp4_NEG_stall_in))));
assign merge_node_stall_in_0 = (~(local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG) & (~(local_bb0_cmp4_NEG_output_regs_ready) | ~(local_bb0_cmp4_NEG_inputs_ready)));
assign local_bb0_cmp4_NEG_causedstall = (local_bb0_cmp4_NEG_inputs_ready && (~(local_bb0_cmp4_NEG_output_regs_ready) && !(~(local_bb0_cmp4_NEG_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_cmp4_NEG_NO_SHIFT_REG <= 'x;
		local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (start)
		begin
			local_bb0_cmp4_NEG_NO_SHIFT_REG <= 'x;
			local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG <= 1'b0;
		end
		else
		begin
			if (local_bb0_cmp4_NEG_output_regs_ready)
			begin
				local_bb0_cmp4_NEG_NO_SHIFT_REG <= ($signed(input_size) < $signed(32'h1));
				local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG <= local_bb0_cmp4_NEG_inputs_ready;
			end
			else
			begin
				if (~(local_bb0_cmp4_NEG_stall_in))
				begin
					local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG <= local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG;
				end
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (start)
		begin
			local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG <= 1'b0;
		end
		else
		begin
			if (local_bb0_cmp4_NEG_inputs_ready)
			begin
				local_bb0_cmp4_NEG_wii_reg_NO_SHIFT_REG <= 1'b1;
			end
		end
	end
end


// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
 reg branch_node_valid_out_NO_SHIFT_REG;
wire branch_var__output_regs_ready;
wire combined_branch_stall_in_signal;
 reg lvb_bb0_cmp4_NEG_reg_NO_SHIFT_REG;
 reg [31:0] lvb_input_global_id_0_reg_NO_SHIFT_REG;

assign branch_var__inputs_ready = (local_bb0_cmp4_NEG_valid_out_NO_SHIFT_REG & merge_node_valid_out_1_NO_SHIFT_REG);
assign branch_var__output_regs_ready = (~(stall_in) | ~(branch_node_valid_out_NO_SHIFT_REG));
assign local_bb0_cmp4_NEG_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign merge_node_stall_in_1 = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign lvb_bb0_cmp4_NEG = lvb_bb0_cmp4_NEG_reg_NO_SHIFT_REG;
assign lvb_input_global_id_0 = lvb_input_global_id_0_reg_NO_SHIFT_REG;
assign combined_branch_stall_in_signal = stall_in;
assign valid_out = branch_node_valid_out_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		branch_node_valid_out_NO_SHIFT_REG <= 1'b0;
		lvb_bb0_cmp4_NEG_reg_NO_SHIFT_REG <= 'x;
		lvb_input_global_id_0_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (branch_var__output_regs_ready)
		begin
			branch_node_valid_out_NO_SHIFT_REG <= branch_var__inputs_ready;
			lvb_bb0_cmp4_NEG_reg_NO_SHIFT_REG <= local_bb0_cmp4_NEG_NO_SHIFT_REG;
			lvb_input_global_id_0_reg_NO_SHIFT_REG <= local_lvm_input_global_id_0_NO_SHIFT_REG;
		end
		else
		begin
			if (~(combined_branch_stall_in_signal))
			begin
				branch_node_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_basic_block_1
	(
		input 		clock,
		input 		resetn,
		input [63:0] 		input__mul,
		input [31:0] 		input_global_size_0,
		input [31:0] 		input_size,
		input 		input_wii_cmp4_NEG,
		input 		valid_in,
		output 		stall_out,
		input [31:0] 		input_global_id_0,
		output 		valid_out,
		input 		stall_in,
		output [63:0] 		lvb_bb1_var_,
		output [31:0] 		lvb_bb1_ld_,
		output [31:0] 		lvb_bb1_mul,
		input [31:0] 		workgroup_size,
		input 		start,
		output 		avm_local_bb1_ld__enable,
		input [255:0] 		avm_local_bb1_ld__readdata,
		input 		avm_local_bb1_ld__readdatavalid,
		input 		avm_local_bb1_ld__waitrequest,
		output [29:0] 		avm_local_bb1_ld__address,
		output 		avm_local_bb1_ld__read,
		output 		avm_local_bb1_ld__write,
		input 		avm_local_bb1_ld__writeack,
		output [255:0] 		avm_local_bb1_ld__writedata,
		output [31:0] 		avm_local_bb1_ld__byteenable,
		output [4:0] 		avm_local_bb1_ld__burstcount,
		output 		local_bb1_ld__active,
		input 		clock2x
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((&valid_in) & ~((|stall_out)));
assign _exit = ((&valid_out) & ~((|stall_in)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in_0;
 reg merge_node_valid_out_0_NO_SHIFT_REG;
wire merge_node_stall_in_1;
 reg merge_node_valid_out_1_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_global_id_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] local_lvm_input_global_id_0_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = ((merge_node_stall_in_0 & merge_node_valid_out_0_NO_SHIFT_REG) | (merge_node_stall_in_1 & merge_node_valid_out_1_NO_SHIFT_REG));
assign stall_out = merge_node_valid_in_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_staging_reg_NO_SHIFT_REG | valid_in))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_global_id_0_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_staging_reg_NO_SHIFT_REG))
			begin
				input_global_id_0_staging_reg_NO_SHIFT_REG <= input_global_id_0;
				merge_node_valid_in_staging_reg_NO_SHIFT_REG <= valid_in;
			end
		end
		else
		begin
			merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_0_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_1_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in_0))
			begin
				merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_1))
			begin
				merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements a registered operation.
// 
wire local_bb1_mul_inputs_ready;
 reg local_bb1_mul_valid_out_NO_SHIFT_REG;
wire local_bb1_mul_stall_in;
wire local_bb1_mul_output_regs_ready;
wire [31:0] local_bb1_mul;
 reg local_bb1_mul_valid_pipe_0_NO_SHIFT_REG;
 reg local_bb1_mul_valid_pipe_1_NO_SHIFT_REG;
wire local_bb1_mul_causedstall;

acl_int_mult int_module_local_bb1_mul (
	.clock(clock),
	.dataa(local_lvm_input_global_id_0_NO_SHIFT_REG),
	.datab(input_size),
	.enable(local_bb1_mul_output_regs_ready),
	.result(local_bb1_mul)
);

defparam int_module_local_bb1_mul.INPUT1_WIDTH = 32;
defparam int_module_local_bb1_mul.INPUT2_WIDTH = 32;
defparam int_module_local_bb1_mul.OUTPUT_WIDTH = 32;
defparam int_module_local_bb1_mul.LATENCY = 3;
defparam int_module_local_bb1_mul.SIGNED = 0;

assign local_bb1_mul_inputs_ready = merge_node_valid_out_0_NO_SHIFT_REG;
assign local_bb1_mul_output_regs_ready = (&(~(local_bb1_mul_valid_out_NO_SHIFT_REG) | ~(local_bb1_mul_stall_in)));
assign merge_node_stall_in_0 = (~(local_bb1_mul_output_regs_ready) | ~(local_bb1_mul_inputs_ready));
assign local_bb1_mul_causedstall = (local_bb1_mul_inputs_ready && (~(local_bb1_mul_output_regs_ready) && !(~(local_bb1_mul_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb1_mul_valid_pipe_0_NO_SHIFT_REG <= 1'b0;
		local_bb1_mul_valid_pipe_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb1_mul_output_regs_ready)
		begin
			local_bb1_mul_valid_pipe_0_NO_SHIFT_REG <= local_bb1_mul_inputs_ready;
			local_bb1_mul_valid_pipe_1_NO_SHIFT_REG <= local_bb1_mul_valid_pipe_0_NO_SHIFT_REG;
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb1_mul_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb1_mul_output_regs_ready)
		begin
			local_bb1_mul_valid_out_NO_SHIFT_REG <= local_bb1_mul_valid_pipe_1_NO_SHIFT_REG;
		end
		else
		begin
			if (~(local_bb1_mul_stall_in))
			begin
				local_bb1_mul_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_1to2_input_global_id_0_0_valid_out_NO_SHIFT_REG;
 logic rnode_1to2_input_global_id_0_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_input_global_id_0_0_NO_SHIFT_REG;
 logic rnode_1to2_input_global_id_0_0_reg_2_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_input_global_id_0_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_input_global_id_0_0_valid_out_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_input_global_id_0_0_stall_in_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_input_global_id_0_0_stall_out_reg_2_NO_SHIFT_REG;

acl_data_fifo rnode_1to2_input_global_id_0_0_reg_2_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to2_input_global_id_0_0_reg_2_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to2_input_global_id_0_0_stall_in_reg_2_NO_SHIFT_REG),
	.valid_out(rnode_1to2_input_global_id_0_0_valid_out_reg_2_NO_SHIFT_REG),
	.stall_out(rnode_1to2_input_global_id_0_0_stall_out_reg_2_NO_SHIFT_REG),
	.data_in(local_lvm_input_global_id_0_NO_SHIFT_REG),
	.data_out(rnode_1to2_input_global_id_0_0_reg_2_NO_SHIFT_REG)
);

defparam rnode_1to2_input_global_id_0_0_reg_2_fifo.DEPTH = 1;
defparam rnode_1to2_input_global_id_0_0_reg_2_fifo.DATA_WIDTH = 32;
defparam rnode_1to2_input_global_id_0_0_reg_2_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_1to2_input_global_id_0_0_reg_2_fifo.IMPL = "ll_reg";

assign rnode_1to2_input_global_id_0_0_reg_2_inputs_ready_NO_SHIFT_REG = merge_node_valid_out_1_NO_SHIFT_REG;
assign merge_node_stall_in_1 = rnode_1to2_input_global_id_0_0_stall_out_reg_2_NO_SHIFT_REG;
assign rnode_1to2_input_global_id_0_0_NO_SHIFT_REG = rnode_1to2_input_global_id_0_0_reg_2_NO_SHIFT_REG;
assign rnode_1to2_input_global_id_0_0_stall_in_reg_2_NO_SHIFT_REG = rnode_1to2_input_global_id_0_0_stall_in_NO_SHIFT_REG;
assign rnode_1to2_input_global_id_0_0_valid_out_NO_SHIFT_REG = rnode_1to2_input_global_id_0_0_valid_out_reg_2_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb1_var__u0_stall_local;
wire [63:0] local_bb1_var__u0;

assign local_bb1_var__u0[32] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[33] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[34] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[35] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[36] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[37] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[38] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[39] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[40] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[41] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[42] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[43] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[44] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[45] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[46] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[47] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[48] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[49] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[50] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[51] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[52] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[53] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[54] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[55] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[56] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[57] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[58] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[59] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[60] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[61] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[62] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[63] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG[31];
assign local_bb1_var__u0[31:0] = rnode_1to2_input_global_id_0_0_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb1_var__valid_out;
wire local_bb1_var__stall_in;
wire local_bb1_var__inputs_ready;
wire local_bb1_var__stall_local;
wire [63:0] local_bb1_var_;

assign local_bb1_var__inputs_ready = rnode_1to2_input_global_id_0_0_valid_out_NO_SHIFT_REG;
assign local_bb1_var_ = ((input__mul & 64'hFFFFFFFFFFFFFC00) + (local_bb1_var__u0 << 6'h2));
assign local_bb1_var__valid_out = local_bb1_var__inputs_ready;
assign local_bb1_var__stall_local = local_bb1_var__stall_in;
assign rnode_1to2_input_global_id_0_0_stall_in_NO_SHIFT_REG = (|local_bb1_var__stall_local);

// This section implements a staging register.
// 
wire rstag_2to2_bb1_var__valid_out_0;
wire rstag_2to2_bb1_var__stall_in_0;
wire rstag_2to2_bb1_var__valid_out_1;
wire rstag_2to2_bb1_var__stall_in_1;
wire rstag_2to2_bb1_var__inputs_ready;
wire rstag_2to2_bb1_var__stall_local;
 reg rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG;
wire rstag_2to2_bb1_var__combined_valid;
 reg [63:0] rstag_2to2_bb1_var__staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_2to2_bb1_var_;
 reg rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG;
 reg rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG;

assign rstag_2to2_bb1_var__inputs_ready = local_bb1_var__valid_out;
assign rstag_2to2_bb1_var_ = (rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG ? rstag_2to2_bb1_var__staging_reg_NO_SHIFT_REG : (local_bb1_var_ & 64'hFFFFFFFFFFFFFFFC));
assign rstag_2to2_bb1_var__combined_valid = (rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG | rstag_2to2_bb1_var__inputs_ready);
assign rstag_2to2_bb1_var__stall_local = ((rstag_2to2_bb1_var__stall_in_0 & ~(rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG)) | (rstag_2to2_bb1_var__stall_in_1 & ~(rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG)));
assign rstag_2to2_bb1_var__valid_out_0 = (rstag_2to2_bb1_var__combined_valid & ~(rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG));
assign rstag_2to2_bb1_var__valid_out_1 = (rstag_2to2_bb1_var__combined_valid & ~(rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG));
assign local_bb1_var__stall_in = (|rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_2to2_bb1_var__staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_2to2_bb1_var__stall_local)
		begin
			if (~(rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG))
			begin
				rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG <= rstag_2to2_bb1_var__inputs_ready;
			end
		end
		else
		begin
			rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_2to2_bb1_var__staging_valid_NO_SHIFT_REG))
		begin
			rstag_2to2_bb1_var__staging_reg_NO_SHIFT_REG <= (local_bb1_var_ & 64'hFFFFFFFFFFFFFFFC);
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG <= 1'b0;
		rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG <= (rstag_2to2_bb1_var__combined_valid & (rstag_2to2_bb1_var__consumed_0_NO_SHIFT_REG | ~(rstag_2to2_bb1_var__stall_in_0)) & rstag_2to2_bb1_var__stall_local);
		rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG <= (rstag_2to2_bb1_var__combined_valid & (rstag_2to2_bb1_var__consumed_1_NO_SHIFT_REG | ~(rstag_2to2_bb1_var__stall_in_1)) & rstag_2to2_bb1_var__stall_local);
	end
end


// Register node:
//  * latency = 2
//  * capacity = 2
 logic rnode_2to4_bb1_var__0_valid_out_NO_SHIFT_REG;
 logic rnode_2to4_bb1_var__0_stall_in_NO_SHIFT_REG;
 logic [63:0] rnode_2to4_bb1_var__0_NO_SHIFT_REG;
 logic rnode_2to4_bb1_var__0_reg_4_inputs_ready_NO_SHIFT_REG;
 logic [63:0] rnode_2to4_bb1_var__0_reg_4_NO_SHIFT_REG;
 logic rnode_2to4_bb1_var__0_valid_out_reg_4_NO_SHIFT_REG;
 logic rnode_2to4_bb1_var__0_stall_in_reg_4_NO_SHIFT_REG;
 logic rnode_2to4_bb1_var__0_stall_out_reg_4_NO_SHIFT_REG;

acl_data_fifo rnode_2to4_bb1_var__0_reg_4_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_2to4_bb1_var__0_reg_4_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_2to4_bb1_var__0_stall_in_reg_4_NO_SHIFT_REG),
	.valid_out(rnode_2to4_bb1_var__0_valid_out_reg_4_NO_SHIFT_REG),
	.stall_out(rnode_2to4_bb1_var__0_stall_out_reg_4_NO_SHIFT_REG),
	.data_in((rstag_2to2_bb1_var_ & 64'hFFFFFFFFFFFFFFFC)),
	.data_out(rnode_2to4_bb1_var__0_reg_4_NO_SHIFT_REG)
);

defparam rnode_2to4_bb1_var__0_reg_4_fifo.DEPTH = 3;
defparam rnode_2to4_bb1_var__0_reg_4_fifo.DATA_WIDTH = 64;
defparam rnode_2to4_bb1_var__0_reg_4_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_2to4_bb1_var__0_reg_4_fifo.IMPL = "ll_reg";

assign rnode_2to4_bb1_var__0_reg_4_inputs_ready_NO_SHIFT_REG = rstag_2to2_bb1_var__valid_out_0;
assign rstag_2to2_bb1_var__stall_in_0 = rnode_2to4_bb1_var__0_stall_out_reg_4_NO_SHIFT_REG;
assign rnode_2to4_bb1_var__0_NO_SHIFT_REG = rnode_2to4_bb1_var__0_reg_4_NO_SHIFT_REG;
assign rnode_2to4_bb1_var__0_stall_in_reg_4_NO_SHIFT_REG = rnode_2to4_bb1_var__0_stall_in_NO_SHIFT_REG;
assign rnode_2to4_bb1_var__0_valid_out_NO_SHIFT_REG = rnode_2to4_bb1_var__0_valid_out_reg_4_NO_SHIFT_REG;

// This section implements a registered operation.
// 
wire local_bb1_ld__inputs_ready;
 reg local_bb1_ld__valid_out_NO_SHIFT_REG;
wire local_bb1_ld__stall_in;
wire local_bb1_ld__output_regs_ready;
wire local_bb1_ld__fu_stall_out;
wire local_bb1_ld__fu_valid_out;
wire [31:0] local_bb1_ld__lsu_dataout;
 reg [31:0] local_bb1_ld__NO_SHIFT_REG;
wire local_bb1_ld__causedstall;

lsu_top lsu_local_bb1_ld_ (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rstag_2to2_bb1_var_ & 64'hFFFFFFFFFFFFFFFC)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb1_ld__fu_stall_out),
	.i_valid(local_bb1_ld__inputs_ready),
	.i_address((rstag_2to2_bb1_var_ & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb1_ld__output_regs_ready)),
	.o_valid(local_bb1_ld__fu_valid_out),
	.o_readdata(local_bb1_ld__lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb1_ld__active),
	.avm_address(avm_local_bb1_ld__address),
	.avm_read(avm_local_bb1_ld__read),
	.avm_enable(avm_local_bb1_ld__enable),
	.avm_readdata(avm_local_bb1_ld__readdata),
	.avm_write(avm_local_bb1_ld__write),
	.avm_writeack(avm_local_bb1_ld__writeack),
	.avm_burstcount(avm_local_bb1_ld__burstcount),
	.avm_writedata(avm_local_bb1_ld__writedata),
	.avm_byteenable(avm_local_bb1_ld__byteenable),
	.avm_waitrequest(avm_local_bb1_ld__waitrequest),
	.avm_readdatavalid(avm_local_bb1_ld__readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb1_ld_.AWIDTH = 30;
defparam lsu_local_bb1_ld_.WIDTH_BYTES = 4;
defparam lsu_local_bb1_ld_.MWIDTH_BYTES = 32;
defparam lsu_local_bb1_ld_.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb1_ld_.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb1_ld_.READ = 1;
defparam lsu_local_bb1_ld_.ATOMIC = 0;
defparam lsu_local_bb1_ld_.WIDTH = 32;
defparam lsu_local_bb1_ld_.MWIDTH = 256;
defparam lsu_local_bb1_ld_.ATOMIC_WIDTH = 3;
defparam lsu_local_bb1_ld_.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb1_ld_.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb1_ld_.MEMORY_SIDE_MEM_LATENCY = 57;
defparam lsu_local_bb1_ld_.USE_WRITE_ACK = 0;
defparam lsu_local_bb1_ld_.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb1_ld_.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb1_ld_.NUMBER_BANKS = 1;
defparam lsu_local_bb1_ld_.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb1_ld_.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb1_ld_.USEINPUTFIFO = 0;
defparam lsu_local_bb1_ld_.USECACHING = 0;
defparam lsu_local_bb1_ld_.USEOUTPUTFIFO = 1;
defparam lsu_local_bb1_ld_.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb1_ld_.ADDRSPACE = 1;
defparam lsu_local_bb1_ld_.STYLE = "STREAMING";

assign local_bb1_ld__inputs_ready = rstag_2to2_bb1_var__valid_out_1;
assign local_bb1_ld__output_regs_ready = (&(~(local_bb1_ld__valid_out_NO_SHIFT_REG) | ~(local_bb1_ld__stall_in)));
assign rstag_2to2_bb1_var__stall_in_1 = (local_bb1_ld__fu_stall_out | ~(local_bb1_ld__inputs_ready));
assign local_bb1_ld__causedstall = (local_bb1_ld__inputs_ready && (local_bb1_ld__fu_stall_out && !(~(local_bb1_ld__output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb1_ld__NO_SHIFT_REG <= 'x;
		local_bb1_ld__valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb1_ld__output_regs_ready)
		begin
			local_bb1_ld__NO_SHIFT_REG <= local_bb1_ld__lsu_dataout;
			local_bb1_ld__valid_out_NO_SHIFT_REG <= local_bb1_ld__fu_valid_out;
		end
		else
		begin
			if (~(local_bb1_ld__stall_in))
			begin
				local_bb1_ld__valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_4to4_bb1_ld__valid_out;
wire rstag_4to4_bb1_ld__stall_in;
wire rstag_4to4_bb1_ld__inputs_ready;
wire rstag_4to4_bb1_ld__stall_local;
 reg rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG;
wire rstag_4to4_bb1_ld__combined_valid;
 reg [31:0] rstag_4to4_bb1_ld__staging_reg_NO_SHIFT_REG;
wire [31:0] rstag_4to4_bb1_ld_;

assign rstag_4to4_bb1_ld__inputs_ready = local_bb1_ld__valid_out_NO_SHIFT_REG;
assign rstag_4to4_bb1_ld_ = (rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG ? rstag_4to4_bb1_ld__staging_reg_NO_SHIFT_REG : local_bb1_ld__NO_SHIFT_REG);
assign rstag_4to4_bb1_ld__combined_valid = (rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG | rstag_4to4_bb1_ld__inputs_ready);
assign rstag_4to4_bb1_ld__valid_out = rstag_4to4_bb1_ld__combined_valid;
assign rstag_4to4_bb1_ld__stall_local = rstag_4to4_bb1_ld__stall_in;
assign local_bb1_ld__stall_in = (|rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_4to4_bb1_ld__staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_4to4_bb1_ld__stall_local)
		begin
			if (~(rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG))
			begin
				rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG <= rstag_4to4_bb1_ld__inputs_ready;
			end
		end
		else
		begin
			rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_4to4_bb1_ld__staging_valid_NO_SHIFT_REG))
		begin
			rstag_4to4_bb1_ld__staging_reg_NO_SHIFT_REG <= local_bb1_ld__NO_SHIFT_REG;
		end
	end
end


// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
 reg branch_node_valid_out_NO_SHIFT_REG;
wire branch_var__output_regs_ready;
wire combined_branch_stall_in_signal;
 reg [63:0] lvb_bb1_var__reg_NO_SHIFT_REG;
 reg [31:0] lvb_bb1_ld__reg_NO_SHIFT_REG;
 reg [31:0] lvb_bb1_mul_reg_NO_SHIFT_REG;

assign branch_var__inputs_ready = (local_bb1_mul_valid_out_NO_SHIFT_REG & rnode_2to4_bb1_var__0_valid_out_NO_SHIFT_REG & rstag_4to4_bb1_ld__valid_out);
assign branch_var__output_regs_ready = (~(stall_in) | ~(branch_node_valid_out_NO_SHIFT_REG));
assign local_bb1_mul_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign rnode_2to4_bb1_var__0_stall_in_NO_SHIFT_REG = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign rstag_4to4_bb1_ld__stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign lvb_bb1_var_ = lvb_bb1_var__reg_NO_SHIFT_REG;
assign lvb_bb1_ld_ = lvb_bb1_ld__reg_NO_SHIFT_REG;
assign lvb_bb1_mul = lvb_bb1_mul_reg_NO_SHIFT_REG;
assign combined_branch_stall_in_signal = stall_in;
assign valid_out = branch_node_valid_out_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		branch_node_valid_out_NO_SHIFT_REG <= 1'b0;
		lvb_bb1_var__reg_NO_SHIFT_REG <= 'x;
		lvb_bb1_ld__reg_NO_SHIFT_REG <= 'x;
		lvb_bb1_mul_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (branch_var__output_regs_ready)
		begin
			branch_node_valid_out_NO_SHIFT_REG <= branch_var__inputs_ready;
			lvb_bb1_var__reg_NO_SHIFT_REG <= (rnode_2to4_bb1_var__0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC);
			lvb_bb1_ld__reg_NO_SHIFT_REG <= rstag_4to4_bb1_ld_;
			lvb_bb1_mul_reg_NO_SHIFT_REG <= local_bb1_mul;
		end
		else
		begin
			if (~(combined_branch_stall_in_signal))
			begin
				branch_node_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_basic_block_2
	(
		input 		clock,
		input 		resetn,
		input [31:0] 		input_size,
		input [63:0] 		input__v,
		input [63:0] 		input__add,
		input 		input_wii_cmp4_NEG,
		input 		valid_in_0,
		output 		stall_out_0,
		input [63:0] 		input_var__0,
		input [31:0] 		input_mul_0,
		input [31:0] 		input_add11_lcssa7_0,
		input [31:0] 		input_c_05_0,
		input 		valid_in_1,
		output 		stall_out_1,
		input [63:0] 		input_var__1,
		input [31:0] 		input_mul_1,
		input [31:0] 		input_add11_lcssa7_1,
		input [31:0] 		input_c_05_1,
		output 		valid_out_0,
		input 		stall_in_0,
		output [63:0] 		lvb_var__0,
		output [31:0] 		lvb_mul_0,
		output [31:0] 		lvb_bb2_inc13_1_0,
		output 		lvb_bb2_exitcond_0,
		output [95:0] 		lvb_bb2_c2_exit_c2_exi2_0,
		output [31:0] 		lvb_bb2_c2_exe2_0,
		output 		valid_out_1,
		input 		stall_in_1,
		output [63:0] 		lvb_var__1,
		output [31:0] 		lvb_mul_1,
		output [31:0] 		lvb_bb2_inc13_1_1,
		output 		lvb_bb2_exitcond_1,
		output [95:0] 		lvb_bb2_c2_exit_c2_exi2_1,
		output [31:0] 		lvb_bb2_c2_exe2_1,
		input [31:0] 		workgroup_size,
		input 		start,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_address,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_read,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_write,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_burstcount,
		output 		local_bb2_ld_memcoalesce__v_load_0_active,
		input 		clock2x,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_address,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_read,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_write,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_burstcount,
		output 		local_bb2_ld_memcoalesce__add_load_0_active
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((valid_in_0 & valid_in_1) & ~((stall_out_0 | stall_out_1)));
assign _exit = ((valid_out_0 & valid_out_1) & ~((stall_in_0 | stall_in_1)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in_0;
 reg merge_node_valid_out_0_NO_SHIFT_REG;
wire merge_node_stall_in_1;
 reg merge_node_valid_out_1_NO_SHIFT_REG;
wire merge_node_stall_in_2;
 reg merge_node_valid_out_2_NO_SHIFT_REG;
wire merge_node_stall_in_3;
 reg merge_node_valid_out_3_NO_SHIFT_REG;
wire merge_node_stall_in_4;
 reg merge_node_valid_out_4_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_0_staging_reg_NO_SHIFT_REG;
 reg [63:0] input_var__0_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_mul_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_add11_lcssa7_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_c_05_0_staging_reg_NO_SHIFT_REG;
 reg [63:0] local_lvm_var__NO_SHIFT_REG;
 reg [31:0] local_lvm_mul_NO_SHIFT_REG;
 reg [31:0] local_lvm_add11_lcssa7_NO_SHIFT_REG;
 reg [31:0] local_lvm_c_05_NO_SHIFT_REG;
 reg merge_node_valid_in_1_staging_reg_NO_SHIFT_REG;
 reg [63:0] input_var__1_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_mul_1_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_add11_lcssa7_1_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_c_05_1_staging_reg_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = ((merge_node_stall_in_0 & merge_node_valid_out_0_NO_SHIFT_REG) | (merge_node_stall_in_1 & merge_node_valid_out_1_NO_SHIFT_REG) | (merge_node_stall_in_2 & merge_node_valid_out_2_NO_SHIFT_REG) | (merge_node_stall_in_3 & merge_node_valid_out_3_NO_SHIFT_REG) | (merge_node_stall_in_4 & merge_node_valid_out_4_NO_SHIFT_REG));
assign stall_out_0 = merge_node_valid_in_0_staging_reg_NO_SHIFT_REG;
assign stall_out_1 = merge_node_valid_in_1_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_0_staging_reg_NO_SHIFT_REG | valid_in_0))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		if ((merge_node_valid_in_1_staging_reg_NO_SHIFT_REG | valid_in_1))
		begin
			merge_block_selector_NO_SHIFT_REG = 1'b1;
			is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
		end
		else
		begin
			merge_block_selector_NO_SHIFT_REG = 1'b0;
			is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_var__0_staging_reg_NO_SHIFT_REG <= 'x;
		input_mul_0_staging_reg_NO_SHIFT_REG <= 'x;
		input_add11_lcssa7_0_staging_reg_NO_SHIFT_REG <= 'x;
		input_c_05_0_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_0_staging_reg_NO_SHIFT_REG <= 1'b0;
		input_var__1_staging_reg_NO_SHIFT_REG <= 'x;
		input_mul_1_staging_reg_NO_SHIFT_REG <= 'x;
		input_add11_lcssa7_1_staging_reg_NO_SHIFT_REG <= 'x;
		input_c_05_1_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_1_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_0_staging_reg_NO_SHIFT_REG))
			begin
				input_var__0_staging_reg_NO_SHIFT_REG <= input_var__0;
				input_mul_0_staging_reg_NO_SHIFT_REG <= input_mul_0;
				input_add11_lcssa7_0_staging_reg_NO_SHIFT_REG <= input_add11_lcssa7_0;
				input_c_05_0_staging_reg_NO_SHIFT_REG <= input_c_05_0;
				merge_node_valid_in_0_staging_reg_NO_SHIFT_REG <= valid_in_0;
			end
		end
		else
		begin
			merge_node_valid_in_0_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
		if (((merge_block_selector_NO_SHIFT_REG != 1'b1) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_1_staging_reg_NO_SHIFT_REG))
			begin
				input_var__1_staging_reg_NO_SHIFT_REG <= input_var__1;
				input_mul_1_staging_reg_NO_SHIFT_REG <= input_mul_1;
				input_add11_lcssa7_1_staging_reg_NO_SHIFT_REG <= input_add11_lcssa7_1;
				input_c_05_1_staging_reg_NO_SHIFT_REG <= input_c_05_1;
				merge_node_valid_in_1_staging_reg_NO_SHIFT_REG <= valid_in_1;
			end
		end
		else
		begin
			merge_node_valid_in_1_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_0_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var__0_staging_reg_NO_SHIFT_REG;
					local_lvm_mul_NO_SHIFT_REG <= input_mul_0_staging_reg_NO_SHIFT_REG;
					local_lvm_add11_lcssa7_NO_SHIFT_REG <= input_add11_lcssa7_0_staging_reg_NO_SHIFT_REG;
					local_lvm_c_05_NO_SHIFT_REG <= input_c_05_0_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var__0;
					local_lvm_mul_NO_SHIFT_REG <= input_mul_0;
					local_lvm_add11_lcssa7_NO_SHIFT_REG <= input_add11_lcssa7_0;
					local_lvm_c_05_NO_SHIFT_REG <= input_c_05_0;
				end
			end

			1'b1:
			begin
				if (merge_node_valid_in_1_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var__1_staging_reg_NO_SHIFT_REG;
					local_lvm_mul_NO_SHIFT_REG <= input_mul_1_staging_reg_NO_SHIFT_REG;
					local_lvm_add11_lcssa7_NO_SHIFT_REG <= input_add11_lcssa7_1_staging_reg_NO_SHIFT_REG;
					local_lvm_c_05_NO_SHIFT_REG <= input_c_05_1_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var__1;
					local_lvm_mul_NO_SHIFT_REG <= input_mul_1;
					local_lvm_add11_lcssa7_NO_SHIFT_REG <= input_add11_lcssa7_1;
					local_lvm_c_05_NO_SHIFT_REG <= input_c_05_1;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_2_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_3_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_4_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_0_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_1_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_2_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_3_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_4_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in_0))
			begin
				merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_1))
			begin
				merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_2))
			begin
				merge_node_valid_out_2_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_3))
			begin
				merge_node_valid_out_3_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_4))
			begin
				merge_node_valid_out_4_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements an unregistered operation.
// 
wire local_bb2_add_valid_out;
wire local_bb2_add_stall_in;
wire local_bb2_add_inputs_ready;
wire local_bb2_add_stall_local;
wire [31:0] local_bb2_add;

assign local_bb2_add_inputs_ready = merge_node_valid_out_0_NO_SHIFT_REG;
assign local_bb2_add = ((local_lvm_c_05_NO_SHIFT_REG & 32'hFFFFFFFE) + local_lvm_mul_NO_SHIFT_REG);
assign local_bb2_add_valid_out = local_bb2_add_inputs_ready;
assign local_bb2_add_stall_local = local_bb2_add_stall_in;
assign merge_node_stall_in_0 = (|local_bb2_add_stall_local);

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_1to2_cmp4_NEG_0_valid_out_0_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_stall_in_0_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_valid_out_1_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_stall_in_1_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_reg_2_inputs_ready_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_stall_in_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_cmp4_NEG_0_stall_out_reg_2_NO_SHIFT_REG;
 reg rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG;
 reg rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG;

acl_data_fifo rnode_1to2_cmp4_NEG_0_reg_2_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to2_cmp4_NEG_0_reg_2_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to2_cmp4_NEG_0_stall_in_0_reg_2_NO_SHIFT_REG),
	.valid_out(rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG),
	.stall_out(rnode_1to2_cmp4_NEG_0_stall_out_reg_2_NO_SHIFT_REG),
	.data_in(),
	.data_out()
);

defparam rnode_1to2_cmp4_NEG_0_reg_2_fifo.DEPTH = 2;
defparam rnode_1to2_cmp4_NEG_0_reg_2_fifo.DATA_WIDTH = 0;
defparam rnode_1to2_cmp4_NEG_0_reg_2_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to2_cmp4_NEG_0_reg_2_fifo.IMPL = "ll_reg";

assign rnode_1to2_cmp4_NEG_0_reg_2_inputs_ready_NO_SHIFT_REG = merge_node_valid_out_1_NO_SHIFT_REG;
assign merge_node_stall_in_1 = rnode_1to2_cmp4_NEG_0_stall_out_reg_2_NO_SHIFT_REG;
assign rnode_1to2_cmp4_NEG_0_stall_in_0_reg_2_NO_SHIFT_REG = ((rnode_1to2_cmp4_NEG_0_stall_in_0_NO_SHIFT_REG & ~(rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG)) | (rnode_1to2_cmp4_NEG_0_stall_in_1_NO_SHIFT_REG & ~(rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG)));
assign rnode_1to2_cmp4_NEG_0_valid_out_0_NO_SHIFT_REG = (rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG & ~(rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG));
assign rnode_1to2_cmp4_NEG_0_valid_out_1_NO_SHIFT_REG = (rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG & ~(rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG <= 1'b0;
		rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG <= (rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG & (rnode_1to2_cmp4_NEG_0_consumed_0_NO_SHIFT_REG | ~(rnode_1to2_cmp4_NEG_0_stall_in_0_NO_SHIFT_REG)) & rnode_1to2_cmp4_NEG_0_stall_in_0_reg_2_NO_SHIFT_REG);
		rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG <= (rnode_1to2_cmp4_NEG_0_valid_out_0_reg_2_NO_SHIFT_REG & (rnode_1to2_cmp4_NEG_0_consumed_1_NO_SHIFT_REG | ~(rnode_1to2_cmp4_NEG_0_stall_in_1_NO_SHIFT_REG)) & rnode_1to2_cmp4_NEG_0_stall_in_0_reg_2_NO_SHIFT_REG);
	end
end


// Register node:
//  * latency = 160
//  * capacity = 160
 logic rnode_1to161_add11_lcssa7_0_valid_out_NO_SHIFT_REG;
 logic rnode_1to161_add11_lcssa7_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_1to161_add11_lcssa7_0_NO_SHIFT_REG;
 logic rnode_1to161_add11_lcssa7_0_reg_161_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_1to161_add11_lcssa7_0_reg_161_NO_SHIFT_REG;
 logic rnode_1to161_add11_lcssa7_0_valid_out_reg_161_NO_SHIFT_REG;
 logic rnode_1to161_add11_lcssa7_0_stall_in_reg_161_NO_SHIFT_REG;
 logic rnode_1to161_add11_lcssa7_0_stall_out_reg_161_NO_SHIFT_REG;

acl_data_fifo rnode_1to161_add11_lcssa7_0_reg_161_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to161_add11_lcssa7_0_reg_161_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to161_add11_lcssa7_0_stall_in_reg_161_NO_SHIFT_REG),
	.valid_out(rnode_1to161_add11_lcssa7_0_valid_out_reg_161_NO_SHIFT_REG),
	.stall_out(rnode_1to161_add11_lcssa7_0_stall_out_reg_161_NO_SHIFT_REG),
	.data_in(local_lvm_add11_lcssa7_NO_SHIFT_REG),
	.data_out(rnode_1to161_add11_lcssa7_0_reg_161_NO_SHIFT_REG)
);

defparam rnode_1to161_add11_lcssa7_0_reg_161_fifo.DEPTH = 161;
defparam rnode_1to161_add11_lcssa7_0_reg_161_fifo.DATA_WIDTH = 32;
defparam rnode_1to161_add11_lcssa7_0_reg_161_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to161_add11_lcssa7_0_reg_161_fifo.IMPL = "ram";

assign rnode_1to161_add11_lcssa7_0_reg_161_inputs_ready_NO_SHIFT_REG = merge_node_valid_out_2_NO_SHIFT_REG;
assign merge_node_stall_in_2 = rnode_1to161_add11_lcssa7_0_stall_out_reg_161_NO_SHIFT_REG;
assign rnode_1to161_add11_lcssa7_0_NO_SHIFT_REG = rnode_1to161_add11_lcssa7_0_reg_161_NO_SHIFT_REG;
assign rnode_1to161_add11_lcssa7_0_stall_in_reg_161_NO_SHIFT_REG = rnode_1to161_add11_lcssa7_0_stall_in_NO_SHIFT_REG;
assign rnode_1to161_add11_lcssa7_0_valid_out_NO_SHIFT_REG = rnode_1to161_add11_lcssa7_0_valid_out_reg_161_NO_SHIFT_REG;

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_1to2_c_05_0_valid_out_0_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_stall_in_0_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_c_05_0_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_valid_out_1_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_stall_in_1_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_c_05_1_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_reg_2_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_c_05_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_stall_in_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_c_05_0_stall_out_reg_2_NO_SHIFT_REG;
 reg rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG;
 reg rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG;
wire [95:0] rci_rcnode_1to165_rc4_var__0_reg_1;

acl_data_fifo rnode_1to2_c_05_0_reg_2_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to2_c_05_0_reg_2_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to2_c_05_0_stall_in_0_reg_2_NO_SHIFT_REG),
	.valid_out(rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG),
	.stall_out(rnode_1to2_c_05_0_stall_out_reg_2_NO_SHIFT_REG),
	.data_in((local_lvm_c_05_NO_SHIFT_REG & 32'hFFFFFFFE)),
	.data_out(rnode_1to2_c_05_0_reg_2_NO_SHIFT_REG)
);

defparam rnode_1to2_c_05_0_reg_2_fifo.DEPTH = 2;
defparam rnode_1to2_c_05_0_reg_2_fifo.DATA_WIDTH = 32;
defparam rnode_1to2_c_05_0_reg_2_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to2_c_05_0_reg_2_fifo.IMPL = "ll_reg";

assign rnode_1to2_c_05_0_reg_2_inputs_ready_NO_SHIFT_REG = merge_node_valid_out_3_NO_SHIFT_REG;
assign merge_node_stall_in_3 = rnode_1to2_c_05_0_stall_out_reg_2_NO_SHIFT_REG;
assign rnode_1to2_c_05_0_stall_in_0_reg_2_NO_SHIFT_REG = ((rnode_1to2_c_05_0_stall_in_0_NO_SHIFT_REG & ~(rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG)) | (rnode_1to2_c_05_0_stall_in_1_NO_SHIFT_REG & ~(rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG)));
assign rnode_1to2_c_05_0_valid_out_0_NO_SHIFT_REG = (rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG & ~(rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG));
assign rnode_1to2_c_05_0_valid_out_1_NO_SHIFT_REG = (rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG & ~(rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG));
assign rnode_1to2_c_05_0_NO_SHIFT_REG = rnode_1to2_c_05_0_reg_2_NO_SHIFT_REG;
assign rnode_1to2_c_05_1_NO_SHIFT_REG = rnode_1to2_c_05_0_reg_2_NO_SHIFT_REG;
assign rci_rcnode_1to165_rc4_var__0_reg_1[63:0] = (local_lvm_var__NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC);
assign rci_rcnode_1to165_rc4_var__0_reg_1[95:64] = local_lvm_mul_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG <= 1'b0;
		rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG <= (rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG & (rnode_1to2_c_05_0_consumed_0_NO_SHIFT_REG | ~(rnode_1to2_c_05_0_stall_in_0_NO_SHIFT_REG)) & rnode_1to2_c_05_0_stall_in_0_reg_2_NO_SHIFT_REG);
		rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG <= (rnode_1to2_c_05_0_valid_out_0_reg_2_NO_SHIFT_REG & (rnode_1to2_c_05_0_consumed_1_NO_SHIFT_REG | ~(rnode_1to2_c_05_0_stall_in_1_NO_SHIFT_REG)) & rnode_1to2_c_05_0_stall_in_0_reg_2_NO_SHIFT_REG);
	end
end


// Register node:
//  * latency = 164
//  * capacity = 164
 logic rcnode_1to165_rc4_var__0_valid_out_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_stall_in_NO_SHIFT_REG;
 logic [95:0] rcnode_1to165_rc4_var__0_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_reg_165_inputs_ready_NO_SHIFT_REG;
 logic [95:0] rcnode_1to165_rc4_var__0_reg_165_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_valid_out_reg_165_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_stall_in_reg_165_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_stall_out_reg_165_IP_NO_SHIFT_REG;
 logic rcnode_1to165_rc4_var__0_stall_out_reg_165_NO_SHIFT_REG;

acl_data_fifo rcnode_1to165_rc4_var__0_reg_165_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rcnode_1to165_rc4_var__0_reg_165_inputs_ready_NO_SHIFT_REG),
	.stall_in(rcnode_1to165_rc4_var__0_stall_in_reg_165_NO_SHIFT_REG),
	.valid_out(rcnode_1to165_rc4_var__0_valid_out_reg_165_NO_SHIFT_REG),
	.stall_out(rcnode_1to165_rc4_var__0_stall_out_reg_165_IP_NO_SHIFT_REG),
	.data_in(rci_rcnode_1to165_rc4_var__0_reg_1),
	.data_out(rcnode_1to165_rc4_var__0_reg_165_NO_SHIFT_REG)
);

defparam rcnode_1to165_rc4_var__0_reg_165_fifo.DEPTH = 165;
defparam rcnode_1to165_rc4_var__0_reg_165_fifo.DATA_WIDTH = 96;
defparam rcnode_1to165_rc4_var__0_reg_165_fifo.ALLOW_FULL_WRITE = 0;
defparam rcnode_1to165_rc4_var__0_reg_165_fifo.IMPL = "ram";

assign rcnode_1to165_rc4_var__0_reg_165_inputs_ready_NO_SHIFT_REG = merge_node_valid_out_4_NO_SHIFT_REG;
assign rcnode_1to165_rc4_var__0_stall_out_reg_165_NO_SHIFT_REG = (~(rcnode_1to165_rc4_var__0_reg_165_inputs_ready_NO_SHIFT_REG) | rcnode_1to165_rc4_var__0_stall_out_reg_165_IP_NO_SHIFT_REG);
assign merge_node_stall_in_4 = rcnode_1to165_rc4_var__0_stall_out_reg_165_NO_SHIFT_REG;
assign rcnode_1to165_rc4_var__0_NO_SHIFT_REG = rcnode_1to165_rc4_var__0_reg_165_NO_SHIFT_REG;
assign rcnode_1to165_rc4_var__0_stall_in_reg_165_NO_SHIFT_REG = rcnode_1to165_rc4_var__0_stall_in_NO_SHIFT_REG;
assign rcnode_1to165_rc4_var__0_valid_out_NO_SHIFT_REG = rcnode_1to165_rc4_var__0_valid_out_reg_165_NO_SHIFT_REG;

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_1to2_bb2_add_0_valid_out_NO_SHIFT_REG;
 logic rnode_1to2_bb2_add_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_bb2_add_0_NO_SHIFT_REG;
 logic rnode_1to2_bb2_add_0_reg_2_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_1to2_bb2_add_0_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_bb2_add_0_valid_out_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_bb2_add_0_stall_in_reg_2_NO_SHIFT_REG;
 logic rnode_1to2_bb2_add_0_stall_out_reg_2_NO_SHIFT_REG;

acl_data_fifo rnode_1to2_bb2_add_0_reg_2_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to2_bb2_add_0_reg_2_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to2_bb2_add_0_stall_in_reg_2_NO_SHIFT_REG),
	.valid_out(rnode_1to2_bb2_add_0_valid_out_reg_2_NO_SHIFT_REG),
	.stall_out(rnode_1to2_bb2_add_0_stall_out_reg_2_NO_SHIFT_REG),
	.data_in(local_bb2_add),
	.data_out(rnode_1to2_bb2_add_0_reg_2_NO_SHIFT_REG)
);

defparam rnode_1to2_bb2_add_0_reg_2_fifo.DEPTH = 2;
defparam rnode_1to2_bb2_add_0_reg_2_fifo.DATA_WIDTH = 32;
defparam rnode_1to2_bb2_add_0_reg_2_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to2_bb2_add_0_reg_2_fifo.IMPL = "ll_reg";

assign rnode_1to2_bb2_add_0_reg_2_inputs_ready_NO_SHIFT_REG = local_bb2_add_valid_out;
assign local_bb2_add_stall_in = rnode_1to2_bb2_add_0_stall_out_reg_2_NO_SHIFT_REG;
assign rnode_1to2_bb2_add_0_NO_SHIFT_REG = rnode_1to2_bb2_add_0_reg_2_NO_SHIFT_REG;
assign rnode_1to2_bb2_add_0_stall_in_reg_2_NO_SHIFT_REG = rnode_1to2_bb2_add_0_stall_in_NO_SHIFT_REG;
assign rnode_1to2_bb2_add_0_valid_out_NO_SHIFT_REG = rnode_1to2_bb2_add_0_valid_out_reg_2_NO_SHIFT_REG;

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_161to162_add11_lcssa7_0_valid_out_NO_SHIFT_REG;
 logic rnode_161to162_add11_lcssa7_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_161to162_add11_lcssa7_0_NO_SHIFT_REG;
 logic rnode_161to162_add11_lcssa7_0_reg_162_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_161to162_add11_lcssa7_0_reg_162_NO_SHIFT_REG;
 logic rnode_161to162_add11_lcssa7_0_valid_out_reg_162_NO_SHIFT_REG;
 logic rnode_161to162_add11_lcssa7_0_stall_in_reg_162_NO_SHIFT_REG;
 logic rnode_161to162_add11_lcssa7_0_stall_out_reg_162_NO_SHIFT_REG;

acl_data_fifo rnode_161to162_add11_lcssa7_0_reg_162_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_161to162_add11_lcssa7_0_reg_162_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_161to162_add11_lcssa7_0_stall_in_reg_162_NO_SHIFT_REG),
	.valid_out(rnode_161to162_add11_lcssa7_0_valid_out_reg_162_NO_SHIFT_REG),
	.stall_out(rnode_161to162_add11_lcssa7_0_stall_out_reg_162_NO_SHIFT_REG),
	.data_in(rnode_1to161_add11_lcssa7_0_NO_SHIFT_REG),
	.data_out(rnode_161to162_add11_lcssa7_0_reg_162_NO_SHIFT_REG)
);

defparam rnode_161to162_add11_lcssa7_0_reg_162_fifo.DEPTH = 1;
defparam rnode_161to162_add11_lcssa7_0_reg_162_fifo.DATA_WIDTH = 32;
defparam rnode_161to162_add11_lcssa7_0_reg_162_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_161to162_add11_lcssa7_0_reg_162_fifo.IMPL = "ll_reg";

assign rnode_161to162_add11_lcssa7_0_reg_162_inputs_ready_NO_SHIFT_REG = rnode_1to161_add11_lcssa7_0_valid_out_NO_SHIFT_REG;
assign rnode_1to161_add11_lcssa7_0_stall_in_NO_SHIFT_REG = rnode_161to162_add11_lcssa7_0_stall_out_reg_162_NO_SHIFT_REG;
assign rnode_161to162_add11_lcssa7_0_NO_SHIFT_REG = rnode_161to162_add11_lcssa7_0_reg_162_NO_SHIFT_REG;
assign rnode_161to162_add11_lcssa7_0_stall_in_reg_162_NO_SHIFT_REG = rnode_161to162_add11_lcssa7_0_stall_in_NO_SHIFT_REG;
assign rnode_161to162_add11_lcssa7_0_valid_out_NO_SHIFT_REG = rnode_161to162_add11_lcssa7_0_valid_out_reg_162_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_idxprom6_stall_local;
wire [63:0] local_bb2_idxprom6;
wire [31:0] local_bb2_idxprom6$ps;

assign local_bb2_idxprom6$ps = (rnode_1to2_c_05_0_NO_SHIFT_REG & 32'hFFFFFFFE);
assign local_bb2_idxprom6[32] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[33] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[34] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[35] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[36] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[37] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[38] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[39] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[40] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[41] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[42] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[43] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[44] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[45] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[46] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[47] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[48] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[49] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[50] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[51] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[52] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[53] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[54] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[55] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[56] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[57] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[58] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[59] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[60] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[61] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[62] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[63] = local_bb2_idxprom6$ps[31];
assign local_bb2_idxprom6[31:0] = local_bb2_idxprom6$ps;

// Register node:
//  * latency = 162
//  * capacity = 162
 logic rnode_2to164_c_05_0_valid_out_NO_SHIFT_REG;
 logic rnode_2to164_c_05_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_2to164_c_05_0_NO_SHIFT_REG;
 logic rnode_2to164_c_05_0_reg_164_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_2to164_c_05_0_reg_164_NO_SHIFT_REG;
 logic rnode_2to164_c_05_0_valid_out_reg_164_NO_SHIFT_REG;
 logic rnode_2to164_c_05_0_stall_in_reg_164_NO_SHIFT_REG;
 logic rnode_2to164_c_05_0_stall_out_reg_164_NO_SHIFT_REG;

acl_data_fifo rnode_2to164_c_05_0_reg_164_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_2to164_c_05_0_reg_164_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_2to164_c_05_0_stall_in_reg_164_NO_SHIFT_REG),
	.valid_out(rnode_2to164_c_05_0_valid_out_reg_164_NO_SHIFT_REG),
	.stall_out(rnode_2to164_c_05_0_stall_out_reg_164_NO_SHIFT_REG),
	.data_in((rnode_1to2_c_05_1_NO_SHIFT_REG & 32'hFFFFFFFE)),
	.data_out(rnode_2to164_c_05_0_reg_164_NO_SHIFT_REG)
);

defparam rnode_2to164_c_05_0_reg_164_fifo.DEPTH = 163;
defparam rnode_2to164_c_05_0_reg_164_fifo.DATA_WIDTH = 32;
defparam rnode_2to164_c_05_0_reg_164_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_2to164_c_05_0_reg_164_fifo.IMPL = "ram";

assign rnode_2to164_c_05_0_reg_164_inputs_ready_NO_SHIFT_REG = rnode_1to2_c_05_0_valid_out_1_NO_SHIFT_REG;
assign rnode_1to2_c_05_0_stall_in_1_NO_SHIFT_REG = rnode_2to164_c_05_0_stall_out_reg_164_NO_SHIFT_REG;
assign rnode_2to164_c_05_0_NO_SHIFT_REG = rnode_2to164_c_05_0_reg_164_NO_SHIFT_REG;
assign rnode_2to164_c_05_0_stall_in_reg_164_NO_SHIFT_REG = rnode_2to164_c_05_0_stall_in_NO_SHIFT_REG;
assign rnode_2to164_c_05_0_valid_out_NO_SHIFT_REG = rnode_2to164_c_05_0_valid_out_reg_164_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_idxprom_stall_local;
wire [63:0] local_bb2_idxprom;

assign local_bb2_idxprom[32] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[33] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[34] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[35] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[36] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[37] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[38] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[39] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[40] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[41] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[42] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[43] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[44] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[45] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[46] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[47] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[48] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[49] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[50] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[51] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[52] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[53] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[54] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[55] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[56] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[57] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[58] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[59] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[60] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[61] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[62] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[63] = rnode_1to2_bb2_add_0_NO_SHIFT_REG[31];
assign local_bb2_idxprom[31:0] = rnode_1to2_bb2_add_0_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_arrayidx7_stall_local;
wire [63:0] local_bb2_arrayidx7;

assign local_bb2_arrayidx7 = ((input__v & 64'hFFFFFFFFFFFFFC00) + ((local_bb2_idxprom6 & 64'hFFFFFFFFFFFFFFFE) << 6'h2));

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_164to165_c_05_0_valid_out_0_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_stall_in_0_NO_SHIFT_REG;
 logic [31:0] rnode_164to165_c_05_0_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_valid_out_1_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_stall_in_1_NO_SHIFT_REG;
 logic [31:0] rnode_164to165_c_05_1_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_reg_165_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_164to165_c_05_0_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_valid_out_0_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_stall_in_0_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_c_05_0_stall_out_reg_165_NO_SHIFT_REG;

acl_data_fifo rnode_164to165_c_05_0_reg_165_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_164to165_c_05_0_reg_165_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_164to165_c_05_0_stall_in_0_reg_165_NO_SHIFT_REG),
	.valid_out(rnode_164to165_c_05_0_valid_out_0_reg_165_NO_SHIFT_REG),
	.stall_out(rnode_164to165_c_05_0_stall_out_reg_165_NO_SHIFT_REG),
	.data_in((rnode_2to164_c_05_0_NO_SHIFT_REG & 32'hFFFFFFFE)),
	.data_out(rnode_164to165_c_05_0_reg_165_NO_SHIFT_REG)
);

defparam rnode_164to165_c_05_0_reg_165_fifo.DEPTH = 1;
defparam rnode_164to165_c_05_0_reg_165_fifo.DATA_WIDTH = 32;
defparam rnode_164to165_c_05_0_reg_165_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_164to165_c_05_0_reg_165_fifo.IMPL = "ll_reg";

assign rnode_164to165_c_05_0_reg_165_inputs_ready_NO_SHIFT_REG = rnode_2to164_c_05_0_valid_out_NO_SHIFT_REG;
assign rnode_2to164_c_05_0_stall_in_NO_SHIFT_REG = rnode_164to165_c_05_0_stall_out_reg_165_NO_SHIFT_REG;
assign rnode_164to165_c_05_0_stall_in_0_reg_165_NO_SHIFT_REG = (rnode_164to165_c_05_0_stall_in_0_NO_SHIFT_REG | rnode_164to165_c_05_0_stall_in_1_NO_SHIFT_REG);
assign rnode_164to165_c_05_0_valid_out_0_NO_SHIFT_REG = rnode_164to165_c_05_0_valid_out_0_reg_165_NO_SHIFT_REG;
assign rnode_164to165_c_05_0_valid_out_1_NO_SHIFT_REG = rnode_164to165_c_05_0_valid_out_0_reg_165_NO_SHIFT_REG;
assign rnode_164to165_c_05_0_NO_SHIFT_REG = rnode_164to165_c_05_0_reg_165_NO_SHIFT_REG;
assign rnode_164to165_c_05_1_NO_SHIFT_REG = rnode_164to165_c_05_0_reg_165_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_arrayidx_stall_local;
wire [63:0] local_bb2_arrayidx;

assign local_bb2_arrayidx = ((input__add & 64'hFFFFFFFFFFFFFC00) + (local_bb2_idxprom << 6'h2));

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__v_bitcast_0_valid_out;
wire local_bb2_memcoalesce__v_bitcast_0_stall_in;
wire local_bb2_memcoalesce__v_bitcast_0_inputs_ready;
wire local_bb2_memcoalesce__v_bitcast_0_stall_local;
wire [63:0] local_bb2_memcoalesce__v_bitcast_0;

assign local_bb2_memcoalesce__v_bitcast_0_inputs_ready = rnode_1to2_c_05_0_valid_out_0_NO_SHIFT_REG;
assign local_bb2_memcoalesce__v_bitcast_0 = (local_bb2_arrayidx7 & 64'hFFFFFFFFFFFFFFF8);
assign local_bb2_memcoalesce__v_bitcast_0_valid_out = local_bb2_memcoalesce__v_bitcast_0_inputs_ready;
assign local_bb2_memcoalesce__v_bitcast_0_stall_local = local_bb2_memcoalesce__v_bitcast_0_stall_in;
assign rnode_1to2_c_05_0_stall_in_0_NO_SHIFT_REG = (|local_bb2_memcoalesce__v_bitcast_0_stall_local);

// This section implements an unregistered operation.
// 
wire local_bb2_inc138_stall_local;
wire [31:0] local_bb2_inc138;

assign local_bb2_inc138 = ((rnode_164to165_c_05_0_NO_SHIFT_REG & 32'hFFFFFFFE) | 32'h1);

// This section implements an unregistered operation.
// 
wire local_bb2_inc13_1_stall_local;
wire [31:0] local_bb2_inc13_1;

assign local_bb2_inc13_1 = ((rnode_164to165_c_05_1_NO_SHIFT_REG & 32'hFFFFFFFE) + 32'h2);

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__add_bitcast_0_valid_out;
wire local_bb2_memcoalesce__add_bitcast_0_stall_in;
wire local_bb2_memcoalesce__add_bitcast_0_inputs_ready;
wire local_bb2_memcoalesce__add_bitcast_0_stall_local;
wire [63:0] local_bb2_memcoalesce__add_bitcast_0;

assign local_bb2_memcoalesce__add_bitcast_0_inputs_ready = rnode_1to2_bb2_add_0_valid_out_NO_SHIFT_REG;
assign local_bb2_memcoalesce__add_bitcast_0 = (local_bb2_arrayidx & 64'hFFFFFFFFFFFFFFFC);
assign local_bb2_memcoalesce__add_bitcast_0_valid_out = local_bb2_memcoalesce__add_bitcast_0_inputs_ready;
assign local_bb2_memcoalesce__add_bitcast_0_stall_local = local_bb2_memcoalesce__add_bitcast_0_stall_in;
assign rnode_1to2_bb2_add_0_stall_in_NO_SHIFT_REG = (|local_bb2_memcoalesce__add_bitcast_0_stall_local);

// This section implements a registered operation.
// 
wire local_bb2_ld_memcoalesce__v_load_0_inputs_ready;
 reg local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG;
wire local_bb2_ld_memcoalesce__v_load_0_stall_in;
wire local_bb2_ld_memcoalesce__v_load_0_output_regs_ready;
wire local_bb2_ld_memcoalesce__v_load_0_fu_stall_out;
wire local_bb2_ld_memcoalesce__v_load_0_fu_valid_out;
wire [63:0] local_bb2_ld_memcoalesce__v_load_0_lsu_dataout;
 reg [63:0] local_bb2_ld_memcoalesce__v_load_0_NO_SHIFT_REG;
wire local_bb2_ld_memcoalesce__v_load_0_causedstall;

lsu_top lsu_local_bb2_ld_memcoalesce__v_load_0 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr(),
	.stream_size(),
	.stream_reset(),
	.o_stall(local_bb2_ld_memcoalesce__v_load_0_fu_stall_out),
	.i_valid(local_bb2_ld_memcoalesce__v_load_0_inputs_ready),
	.i_address((local_bb2_memcoalesce__v_bitcast_0 & 64'hFFFFFFFFFFFFFFF8)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(input_wii_cmp4_NEG),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb2_ld_memcoalesce__v_load_0_output_regs_ready)),
	.o_valid(local_bb2_ld_memcoalesce__v_load_0_fu_valid_out),
	.o_readdata(local_bb2_ld_memcoalesce__v_load_0_lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb2_ld_memcoalesce__v_load_0_active),
	.avm_address(avm_local_bb2_ld_memcoalesce__v_load_0_address),
	.avm_read(avm_local_bb2_ld_memcoalesce__v_load_0_read),
	.avm_enable(avm_local_bb2_ld_memcoalesce__v_load_0_enable),
	.avm_readdata(avm_local_bb2_ld_memcoalesce__v_load_0_readdata),
	.avm_write(avm_local_bb2_ld_memcoalesce__v_load_0_write),
	.avm_writeack(avm_local_bb2_ld_memcoalesce__v_load_0_writeack),
	.avm_burstcount(avm_local_bb2_ld_memcoalesce__v_load_0_burstcount),
	.avm_writedata(avm_local_bb2_ld_memcoalesce__v_load_0_writedata),
	.avm_byteenable(avm_local_bb2_ld_memcoalesce__v_load_0_byteenable),
	.avm_waitrequest(avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest),
	.avm_readdatavalid(avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb2_ld_memcoalesce__v_load_0.AWIDTH = 30;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.WIDTH_BYTES = 8;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.MWIDTH_BYTES = 32;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ALIGNMENT_BYTES = 8;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.READ = 1;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ATOMIC = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.WIDTH = 64;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.MWIDTH = 256;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ATOMIC_WIDTH = 3;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.KERNEL_SIDE_MEM_LATENCY = 160;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.MEMORY_SIDE_MEM_LATENCY = 78;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.USE_WRITE_ACK = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.NUMBER_BANKS = 1;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.USEINPUTFIFO = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.USECACHING = 1;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.CACHESIZE = 256;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.USEOUTPUTFIFO = 1;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.ADDRSPACE = 1;
defparam lsu_local_bb2_ld_memcoalesce__v_load_0.STYLE = "BURST-COALESCED";

assign local_bb2_ld_memcoalesce__v_load_0_inputs_ready = (local_bb2_memcoalesce__v_bitcast_0_valid_out & rnode_1to2_cmp4_NEG_0_valid_out_0_NO_SHIFT_REG);
assign local_bb2_ld_memcoalesce__v_load_0_output_regs_ready = (&(~(local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG) | ~(local_bb2_ld_memcoalesce__v_load_0_stall_in)));
assign local_bb2_memcoalesce__v_bitcast_0_stall_in = (local_bb2_ld_memcoalesce__v_load_0_fu_stall_out | ~(local_bb2_ld_memcoalesce__v_load_0_inputs_ready));
assign rnode_1to2_cmp4_NEG_0_stall_in_0_NO_SHIFT_REG = (local_bb2_ld_memcoalesce__v_load_0_fu_stall_out | ~(local_bb2_ld_memcoalesce__v_load_0_inputs_ready));
assign local_bb2_ld_memcoalesce__v_load_0_causedstall = (local_bb2_ld_memcoalesce__v_load_0_inputs_ready && (local_bb2_ld_memcoalesce__v_load_0_fu_stall_out && !(~(local_bb2_ld_memcoalesce__v_load_0_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_ld_memcoalesce__v_load_0_NO_SHIFT_REG <= 'x;
		local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_ld_memcoalesce__v_load_0_output_regs_ready)
		begin
			local_bb2_ld_memcoalesce__v_load_0_NO_SHIFT_REG <= local_bb2_ld_memcoalesce__v_load_0_lsu_dataout;
			local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG <= local_bb2_ld_memcoalesce__v_load_0_fu_valid_out;
		end
		else
		begin
			if (~(local_bb2_ld_memcoalesce__v_load_0_stall_in))
			begin
				local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb2_exitcond_valid_out;
wire local_bb2_exitcond_stall_in;
wire local_bb2_inc13_1_valid_out;
wire local_bb2_inc13_1_stall_in;
wire local_bb2_exitcond_inputs_ready;
wire local_bb2_exitcond_stall_local;
wire local_bb2_exitcond;

assign local_bb2_exitcond_inputs_ready = (rnode_164to165_c_05_0_valid_out_0_NO_SHIFT_REG & rnode_164to165_c_05_0_valid_out_1_NO_SHIFT_REG);
assign local_bb2_exitcond = ((local_bb2_inc138 | 32'h1) == input_size);
assign local_bb2_exitcond_stall_local = (local_bb2_exitcond_stall_in | local_bb2_inc13_1_stall_in);
assign local_bb2_exitcond_valid_out = local_bb2_exitcond_inputs_ready;
assign local_bb2_inc13_1_valid_out = local_bb2_exitcond_inputs_ready;
assign rnode_164to165_c_05_0_stall_in_0_NO_SHIFT_REG = (local_bb2_exitcond_stall_local | ~(local_bb2_exitcond_inputs_ready));
assign rnode_164to165_c_05_0_stall_in_1_NO_SHIFT_REG = (local_bb2_exitcond_stall_local | ~(local_bb2_exitcond_inputs_ready));

// This section implements a registered operation.
// 
wire local_bb2_ld_memcoalesce__add_load_0_inputs_ready;
 reg local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG;
wire local_bb2_ld_memcoalesce__add_load_0_stall_in;
wire local_bb2_ld_memcoalesce__add_load_0_output_regs_ready;
wire local_bb2_ld_memcoalesce__add_load_0_fu_stall_out;
wire local_bb2_ld_memcoalesce__add_load_0_fu_valid_out;
wire [63:0] local_bb2_ld_memcoalesce__add_load_0_lsu_dataout;
 reg [63:0] local_bb2_ld_memcoalesce__add_load_0_NO_SHIFT_REG;
wire local_bb2_ld_memcoalesce__add_load_0_causedstall;

lsu_top lsu_local_bb2_ld_memcoalesce__add_load_0 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr(),
	.stream_size(),
	.stream_reset(),
	.o_stall(local_bb2_ld_memcoalesce__add_load_0_fu_stall_out),
	.i_valid(local_bb2_ld_memcoalesce__add_load_0_inputs_ready),
	.i_address((local_bb2_memcoalesce__add_bitcast_0 & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(input_wii_cmp4_NEG),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb2_ld_memcoalesce__add_load_0_output_regs_ready)),
	.o_valid(local_bb2_ld_memcoalesce__add_load_0_fu_valid_out),
	.o_readdata(local_bb2_ld_memcoalesce__add_load_0_lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb2_ld_memcoalesce__add_load_0_active),
	.avm_address(avm_local_bb2_ld_memcoalesce__add_load_0_address),
	.avm_read(avm_local_bb2_ld_memcoalesce__add_load_0_read),
	.avm_enable(avm_local_bb2_ld_memcoalesce__add_load_0_enable),
	.avm_readdata(avm_local_bb2_ld_memcoalesce__add_load_0_readdata),
	.avm_write(avm_local_bb2_ld_memcoalesce__add_load_0_write),
	.avm_writeack(avm_local_bb2_ld_memcoalesce__add_load_0_writeack),
	.avm_burstcount(avm_local_bb2_ld_memcoalesce__add_load_0_burstcount),
	.avm_writedata(avm_local_bb2_ld_memcoalesce__add_load_0_writedata),
	.avm_byteenable(avm_local_bb2_ld_memcoalesce__add_load_0_byteenable),
	.avm_waitrequest(avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest),
	.avm_readdatavalid(avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb2_ld_memcoalesce__add_load_0.AWIDTH = 30;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.WIDTH_BYTES = 8;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.MWIDTH_BYTES = 32;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.READ = 1;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ATOMIC = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.WIDTH = 64;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.MWIDTH = 256;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ATOMIC_WIDTH = 3;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.KERNEL_SIDE_MEM_LATENCY = 160;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.MEMORY_SIDE_MEM_LATENCY = 78;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.USE_WRITE_ACK = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.NUMBER_BANKS = 1;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.USEINPUTFIFO = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.USECACHING = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.USEOUTPUTFIFO = 1;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.ADDRSPACE = 1;
defparam lsu_local_bb2_ld_memcoalesce__add_load_0.STYLE = "BURST-NON-ALIGNED";

assign local_bb2_ld_memcoalesce__add_load_0_inputs_ready = (local_bb2_memcoalesce__add_bitcast_0_valid_out & rnode_1to2_cmp4_NEG_0_valid_out_1_NO_SHIFT_REG);
assign local_bb2_ld_memcoalesce__add_load_0_output_regs_ready = (&(~(local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG) | ~(local_bb2_ld_memcoalesce__add_load_0_stall_in)));
assign local_bb2_memcoalesce__add_bitcast_0_stall_in = (local_bb2_ld_memcoalesce__add_load_0_fu_stall_out | ~(local_bb2_ld_memcoalesce__add_load_0_inputs_ready));
assign rnode_1to2_cmp4_NEG_0_stall_in_1_NO_SHIFT_REG = (local_bb2_ld_memcoalesce__add_load_0_fu_stall_out | ~(local_bb2_ld_memcoalesce__add_load_0_inputs_ready));
assign local_bb2_ld_memcoalesce__add_load_0_causedstall = (local_bb2_ld_memcoalesce__add_load_0_inputs_ready && (local_bb2_ld_memcoalesce__add_load_0_fu_stall_out && !(~(local_bb2_ld_memcoalesce__add_load_0_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_ld_memcoalesce__add_load_0_NO_SHIFT_REG <= 'x;
		local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_ld_memcoalesce__add_load_0_output_regs_ready)
		begin
			local_bb2_ld_memcoalesce__add_load_0_NO_SHIFT_REG <= local_bb2_ld_memcoalesce__add_load_0_lsu_dataout;
			local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG <= local_bb2_ld_memcoalesce__add_load_0_fu_valid_out;
		end
		else
		begin
			if (~(local_bb2_ld_memcoalesce__add_load_0_stall_in))
			begin
				local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_162to162_bb2_ld_memcoalesce__v_load_0_valid_out;
wire rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_in;
wire rstag_162to162_bb2_ld_memcoalesce__v_load_0_inputs_ready;
wire rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_local;
 reg rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG;
wire rstag_162to162_bb2_ld_memcoalesce__v_load_0_combined_valid;
 reg [63:0] rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_162to162_bb2_ld_memcoalesce__v_load_0;
wire [128:0] rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165;

assign rstag_162to162_bb2_ld_memcoalesce__v_load_0_inputs_ready = local_bb2_ld_memcoalesce__v_load_0_valid_out_NO_SHIFT_REG;
assign rstag_162to162_bb2_ld_memcoalesce__v_load_0 = (rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG ? rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_reg_NO_SHIFT_REG : local_bb2_ld_memcoalesce__v_load_0_NO_SHIFT_REG);
assign rstag_162to162_bb2_ld_memcoalesce__v_load_0_combined_valid = (rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG | rstag_162to162_bb2_ld_memcoalesce__v_load_0_inputs_ready);
assign rstag_162to162_bb2_ld_memcoalesce__v_load_0_valid_out = rstag_162to162_bb2_ld_memcoalesce__v_load_0_combined_valid;
assign rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_local = rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_in;
assign local_bb2_ld_memcoalesce__v_load_0_stall_in = (|rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG);
assign rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165[31:0] = (local_bb2_inc13_1 & 32'hFFFFFFFE);
assign rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165[32] = local_bb2_exitcond;
assign rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165[96:33] = (rcnode_1to165_rc4_var__0_NO_SHIFT_REG[63:0] & 64'hFFFFFFFFFFFFFFFC);
assign rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165[128:97] = rcnode_1to165_rc4_var__0_NO_SHIFT_REG[95:64];

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_local)
		begin
			if (~(rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG))
			begin
				rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG <= rstag_162to162_bb2_ld_memcoalesce__v_load_0_inputs_ready;
			end
		end
		else
		begin
			rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_valid_NO_SHIFT_REG))
		begin
			rstag_162to162_bb2_ld_memcoalesce__v_load_0_staging_reg_NO_SHIFT_REG <= local_bb2_ld_memcoalesce__v_load_0_NO_SHIFT_REG;
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_NO_SHIFT_REG;
 logic [128:0] rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_1_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_1_NO_SHIFT_REG;
 logic [128:0] rcnode_165to166_rc0_bb2_inc13_1_1_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_2_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_2_NO_SHIFT_REG;
 logic [128:0] rcnode_165to166_rc0_bb2_inc13_1_2_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_inputs_ready_NO_SHIFT_REG;
 logic [128:0] rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_reg_166_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_reg_166_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_IP_NO_SHIFT_REG;
 logic rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_NO_SHIFT_REG;

acl_data_fifo rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_inputs_ready_NO_SHIFT_REG),
	.stall_in(rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_reg_166_NO_SHIFT_REG),
	.valid_out(rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_reg_166_NO_SHIFT_REG),
	.stall_out(rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_IP_NO_SHIFT_REG),
	.data_in(rci_rcnode_165to166_rc0_bb2_inc13_1_0_reg_165),
	.data_out(rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_NO_SHIFT_REG)
);

defparam rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_fifo.DEPTH = 1;
defparam rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_fifo.DATA_WIDTH = 129;
defparam rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_fifo.ALLOW_FULL_WRITE = 1;
defparam rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_fifo.IMPL = "ll_reg";

assign rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_inputs_ready_NO_SHIFT_REG = (local_bb2_inc13_1_valid_out & local_bb2_exitcond_valid_out & rcnode_1to165_rc4_var__0_valid_out_NO_SHIFT_REG);
assign rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_NO_SHIFT_REG = (~(rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_inputs_ready_NO_SHIFT_REG) | rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_IP_NO_SHIFT_REG);
assign local_bb2_inc13_1_stall_in = rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_NO_SHIFT_REG;
assign local_bb2_exitcond_stall_in = rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_NO_SHIFT_REG;
assign rcnode_1to165_rc4_var__0_stall_in_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_stall_out_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_reg_166_NO_SHIFT_REG = (rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_NO_SHIFT_REG | rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_1_NO_SHIFT_REG | rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_2_NO_SHIFT_REG);
assign rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_1_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_2_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_1_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_NO_SHIFT_REG;
assign rcnode_165to166_rc0_bb2_inc13_1_2_NO_SHIFT_REG = rcnode_165to166_rc0_bb2_inc13_1_0_reg_166_NO_SHIFT_REG;

// Register node:
//  * latency = 0
//  * capacity = 80
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_NO_SHIFT_REG;
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_NO_SHIFT_REG;
 logic [63:0] rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_NO_SHIFT_REG;
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_inputs_ready_NO_SHIFT_REG;
 logic [63:0] rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_NO_SHIFT_REG;
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_reg_162_NO_SHIFT_REG;
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_reg_162_NO_SHIFT_REG;
 logic rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_out_reg_162_NO_SHIFT_REG;

acl_data_fifo rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_reg_162_NO_SHIFT_REG),
	.valid_out(rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_reg_162_NO_SHIFT_REG),
	.stall_out(rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_out_reg_162_NO_SHIFT_REG),
	.data_in(local_bb2_ld_memcoalesce__add_load_0_NO_SHIFT_REG),
	.data_out(rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_NO_SHIFT_REG)
);

defparam rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_fifo.DEPTH = 81;
defparam rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_fifo.DATA_WIDTH = 64;
defparam rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_fifo.IMPL = "zl_ram";

assign rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_inputs_ready_NO_SHIFT_REG = local_bb2_ld_memcoalesce__add_load_0_valid_out_NO_SHIFT_REG;
assign local_bb2_ld_memcoalesce__add_load_0_stall_in = rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_out_reg_162_NO_SHIFT_REG;
assign rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_NO_SHIFT_REG = rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_reg_162_NO_SHIFT_REG;
assign rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_reg_162_NO_SHIFT_REG = rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_NO_SHIFT_REG;
assign rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_NO_SHIFT_REG = rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_reg_162_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_exitcond_1_stall_local;
wire local_bb2_exitcond_1;

assign local_bb2_exitcond_1 = ((rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[31:0] & 32'hFFFFFFFE) == input_size);

// This section implements an unregistered operation.
// 
wire local_bb2_c1_eni1_stall_local;
wire [191:0] local_bb2_c1_eni1;

assign local_bb2_c1_eni1[31:0] = 32'bx;
assign local_bb2_c1_eni1[95:32] = rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_NO_SHIFT_REG;
assign local_bb2_c1_eni1[191:96] = 96'bx;

// This section implements an unregistered operation.
// 
wire local_bb2__12_demorgan_stall_local;
wire local_bb2__12_demorgan;

assign local_bb2__12_demorgan = (rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[32] | local_bb2_exitcond_1);

// This section implements an unregistered operation.
// 
wire local_bb2_c1_eni2_stall_local;
wire [191:0] local_bb2_c1_eni2;

assign local_bb2_c1_eni2[95:0] = local_bb2_c1_eni1[95:0];
assign local_bb2_c1_eni2[159:96] = rstag_162to162_bb2_ld_memcoalesce__v_load_0;
assign local_bb2_c1_eni2[191:160] = local_bb2_c1_eni1[191:160];

// This section implements an unregistered operation.
// 
wire local_bb2__12_demorgan_GUARD_valid_out;
wire local_bb2__12_demorgan_GUARD_stall_in;
wire local_bb2__12_demorgan_GUARD_inputs_ready;
wire local_bb2__12_demorgan_GUARD_stall_local;
wire local_bb2__12_demorgan_GUARD;

assign local_bb2__12_demorgan_GUARD_inputs_ready = (rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_0_NO_SHIFT_REG & rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_2_NO_SHIFT_REG);
assign local_bb2__12_demorgan_GUARD = (local_bb2__12_demorgan | input_wii_cmp4_NEG);
assign local_bb2__12_demorgan_GUARD_valid_out = local_bb2__12_demorgan_GUARD_inputs_ready;
assign local_bb2__12_demorgan_GUARD_stall_local = local_bb2__12_demorgan_GUARD_stall_in;
assign rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_0_NO_SHIFT_REG = (local_bb2__12_demorgan_GUARD_stall_local | ~(local_bb2__12_demorgan_GUARD_inputs_ready));
assign rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_2_NO_SHIFT_REG = (local_bb2__12_demorgan_GUARD_stall_local | ~(local_bb2__12_demorgan_GUARD_inputs_ready));

// This section implements an unregistered operation.
// 
wire local_bb2_c1_eni3_valid_out;
wire local_bb2_c1_eni3_stall_in;
wire local_bb2_c1_eni3_inputs_ready;
wire local_bb2_c1_eni3_stall_local;
wire [191:0] local_bb2_c1_eni3;

assign local_bb2_c1_eni3_inputs_ready = (rnode_161to162_add11_lcssa7_0_valid_out_NO_SHIFT_REG & rstag_162to162_bb2_ld_memcoalesce__v_load_0_valid_out & rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_valid_out_NO_SHIFT_REG);
assign local_bb2_c1_eni3[159:0] = local_bb2_c1_eni2[159:0];
assign local_bb2_c1_eni3[191:160] = rnode_161to162_add11_lcssa7_0_NO_SHIFT_REG;
assign local_bb2_c1_eni3_valid_out = local_bb2_c1_eni3_inputs_ready;
assign local_bb2_c1_eni3_stall_local = local_bb2_c1_eni3_stall_in;
assign rnode_161to162_add11_lcssa7_0_stall_in_NO_SHIFT_REG = (local_bb2_c1_eni3_stall_local | ~(local_bb2_c1_eni3_inputs_ready));
assign rstag_162to162_bb2_ld_memcoalesce__v_load_0_stall_in = (local_bb2_c1_eni3_stall_local | ~(local_bb2_c1_eni3_inputs_ready));
assign rnode_162to162_bb2_ld_memcoalesce__add_load_0_0_stall_in_NO_SHIFT_REG = (local_bb2_c1_eni3_stall_local | ~(local_bb2_c1_eni3_inputs_ready));

// This section implements an unregistered operation.
// 
wire local_bb2_c1_enter_c1_eni3_valid_out_0;
wire local_bb2_c1_enter_c1_eni3_stall_in_0;
wire local_bb2_c1_enter_c1_eni3_valid_out_1;
wire local_bb2_c1_enter_c1_eni3_stall_in_1;
wire local_bb2_c1_enter_c1_eni3_valid_out_2;
wire local_bb2_c1_enter_c1_eni3_stall_in_2;
wire local_bb2_c1_enter_c1_eni3_valid_out_3;
wire local_bb2_c1_enter_c1_eni3_stall_in_3;
wire local_bb2_c1_enter_c1_eni3_inputs_ready;
wire local_bb2_c1_enter_c1_eni3_stall_local;
wire local_bb2_c1_enter_c1_eni3_input_accepted;
wire [191:0] local_bb2_c1_enter_c1_eni3;
wire local_bb2_c1_exit_c1_exi3_enable;
wire local_bb2_c1_exit_c1_exi3_entry_stall;
wire local_bb2_c1_enter_c1_eni3_valid_bit;
wire local_bb2_c1_exit_c1_exi3_output_regs_ready;
wire local_bb2_c1_exit_c1_exi3_valid_in;
wire local_bb2_c1_exit_c1_exi3_phases;
wire local_bb2_c1_enter_c1_eni3_inc_pipelined_thread;
wire local_bb2_c1_enter_c1_eni3_dec_pipelined_thread;
wire local_bb2_c1_enter_c1_eni3_fu_stall_out;

assign local_bb2_c1_enter_c1_eni3_inputs_ready = local_bb2_c1_eni3_valid_out;
assign local_bb2_c1_enter_c1_eni3 = local_bb2_c1_eni3;
assign local_bb2_c1_enter_c1_eni3_input_accepted = (local_bb2_c1_enter_c1_eni3_inputs_ready && !(local_bb2_c1_exit_c1_exi3_entry_stall));
assign local_bb2_c1_enter_c1_eni3_valid_bit = local_bb2_c1_enter_c1_eni3_input_accepted;
assign local_bb2_c1_enter_c1_eni3_inc_pipelined_thread = 1'b1;
assign local_bb2_c1_enter_c1_eni3_dec_pipelined_thread = ~(1'b0);
assign local_bb2_c1_enter_c1_eni3_fu_stall_out = (~(local_bb2_c1_enter_c1_eni3_inputs_ready) | local_bb2_c1_exit_c1_exi3_entry_stall);
assign local_bb2_c1_enter_c1_eni3_stall_local = (local_bb2_c1_enter_c1_eni3_stall_in_0 | local_bb2_c1_enter_c1_eni3_stall_in_1 | local_bb2_c1_enter_c1_eni3_stall_in_2 | local_bb2_c1_enter_c1_eni3_stall_in_3);
assign local_bb2_c1_enter_c1_eni3_valid_out_0 = local_bb2_c1_enter_c1_eni3_inputs_ready;
assign local_bb2_c1_enter_c1_eni3_valid_out_1 = local_bb2_c1_enter_c1_eni3_inputs_ready;
assign local_bb2_c1_enter_c1_eni3_valid_out_2 = local_bb2_c1_enter_c1_eni3_inputs_ready;
assign local_bb2_c1_enter_c1_eni3_valid_out_3 = local_bb2_c1_enter_c1_eni3_inputs_ready;
assign local_bb2_c1_eni3_stall_in = (|local_bb2_c1_enter_c1_eni3_fu_stall_out);

// This section implements an unregistered operation.
// 
wire local_bb2_c1_ene1_stall_local;
wire [63:0] local_bb2_c1_ene1;

assign local_bb2_c1_ene1 = local_bb2_c1_enter_c1_eni3[95:32];

// This section implements an unregistered operation.
// 
wire local_bb2_c1_ene2_stall_local;
wire [63:0] local_bb2_c1_ene2;

assign local_bb2_c1_ene2 = local_bb2_c1_enter_c1_eni3[159:96];

// This section implements an unregistered operation.
// 
wire local_bb2_c1_ene3_valid_out;
wire local_bb2_c1_ene3_stall_in;
wire local_bb2_c1_ene3_inputs_ready;
wire local_bb2_c1_ene3_stall_local;
wire [31:0] local_bb2_c1_ene3;

assign local_bb2_c1_ene3_inputs_ready = local_bb2_c1_enter_c1_eni3_valid_out_2;
assign local_bb2_c1_ene3 = local_bb2_c1_enter_c1_eni3[191:160];
assign local_bb2_c1_ene3_valid_out = 1'b1;
assign local_bb2_c1_enter_c1_eni3_stall_in_2 = 1'b0;

// This section implements an unregistered operation.
// 
wire SFC_1_VALID_162_162_0_valid_out;
wire SFC_1_VALID_162_162_0_stall_in;
wire SFC_1_VALID_162_162_0_inputs_ready;
wire SFC_1_VALID_162_162_0_stall_local;
wire SFC_1_VALID_162_162_0;

assign SFC_1_VALID_162_162_0_inputs_ready = local_bb2_c1_enter_c1_eni3_valid_out_3;
assign SFC_1_VALID_162_162_0 = local_bb2_c1_enter_c1_eni3_valid_bit;
assign SFC_1_VALID_162_162_0_valid_out = 1'b1;
assign local_bb2_c1_enter_c1_eni3_stall_in_3 = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__add_extrValue_0_stall_local;
wire [31:0] local_bb2_memcoalesce__add_extrValue_0;

assign local_bb2_memcoalesce__add_extrValue_0 = local_bb2_c1_ene1[31:0];

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__add_extrValue_0_valid_out;
wire local_bb2_memcoalesce__add_extrValue_0_stall_in;
wire local_bb2_memcoalesce__add_extrValue_1_valid_out;
wire local_bb2_memcoalesce__add_extrValue_1_stall_in;
wire local_bb2_memcoalesce__add_extrValue_1_inputs_ready;
wire local_bb2_memcoalesce__add_extrValue_1_stall_local;
wire [31:0] local_bb2_memcoalesce__add_extrValue_1;

assign local_bb2_memcoalesce__add_extrValue_1_inputs_ready = local_bb2_c1_enter_c1_eni3_valid_out_0;
assign local_bb2_memcoalesce__add_extrValue_1 = local_bb2_c1_ene1[63:32];
assign local_bb2_memcoalesce__add_extrValue_0_valid_out = 1'b1;
assign local_bb2_memcoalesce__add_extrValue_1_valid_out = 1'b1;
assign local_bb2_c1_enter_c1_eni3_stall_in_0 = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__v_extrValue_0_stall_local;
wire [31:0] local_bb2_memcoalesce__v_extrValue_0;

assign local_bb2_memcoalesce__v_extrValue_0 = local_bb2_c1_ene2[31:0];

// This section implements an unregistered operation.
// 
wire local_bb2_memcoalesce__v_extrValue_0_valid_out;
wire local_bb2_memcoalesce__v_extrValue_0_stall_in;
wire local_bb2_memcoalesce__v_extrValue_1_valid_out;
wire local_bb2_memcoalesce__v_extrValue_1_stall_in;
wire local_bb2_memcoalesce__v_extrValue_1_inputs_ready;
wire local_bb2_memcoalesce__v_extrValue_1_stall_local;
wire [31:0] local_bb2_memcoalesce__v_extrValue_1;

assign local_bb2_memcoalesce__v_extrValue_1_inputs_ready = local_bb2_c1_enter_c1_eni3_valid_out_1;
assign local_bb2_memcoalesce__v_extrValue_1 = local_bb2_c1_ene2[63:32];
assign local_bb2_memcoalesce__v_extrValue_0_valid_out = 1'b1;
assign local_bb2_memcoalesce__v_extrValue_1_valid_out = 1'b1;
assign local_bb2_c1_enter_c1_eni3_stall_in_1 = 1'b0;

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_162to163_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG;
 logic rnode_162to163_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_162to163_bb2_c1_ene3_0_NO_SHIFT_REG;
 logic rnode_162to163_bb2_c1_ene3_0_reg_163_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_162to163_bb2_c1_ene3_0_reg_163_NO_SHIFT_REG;
 logic rnode_162to163_bb2_c1_ene3_0_valid_out_reg_163_NO_SHIFT_REG;
 logic rnode_162to163_bb2_c1_ene3_0_stall_in_reg_163_NO_SHIFT_REG;
 logic rnode_162to163_bb2_c1_ene3_0_stall_out_reg_163_NO_SHIFT_REG;

acl_data_fifo rnode_162to163_bb2_c1_ene3_0_reg_163_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_162to163_bb2_c1_ene3_0_reg_163_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_162to163_bb2_c1_ene3_0_stall_in_reg_163_NO_SHIFT_REG),
	.valid_out(rnode_162to163_bb2_c1_ene3_0_valid_out_reg_163_NO_SHIFT_REG),
	.stall_out(rnode_162to163_bb2_c1_ene3_0_stall_out_reg_163_NO_SHIFT_REG),
	.data_in(local_bb2_c1_ene3),
	.data_out(rnode_162to163_bb2_c1_ene3_0_reg_163_NO_SHIFT_REG)
);

defparam rnode_162to163_bb2_c1_ene3_0_reg_163_fifo.DEPTH = 1;
defparam rnode_162to163_bb2_c1_ene3_0_reg_163_fifo.DATA_WIDTH = 32;
defparam rnode_162to163_bb2_c1_ene3_0_reg_163_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_162to163_bb2_c1_ene3_0_reg_163_fifo.IMPL = "shift_reg";

assign rnode_162to163_bb2_c1_ene3_0_reg_163_inputs_ready_NO_SHIFT_REG = 1'b1;
assign local_bb2_c1_ene3_stall_in = 1'b0;
assign rnode_162to163_bb2_c1_ene3_0_NO_SHIFT_REG = rnode_162to163_bb2_c1_ene3_0_reg_163_NO_SHIFT_REG;
assign rnode_162to163_bb2_c1_ene3_0_stall_in_reg_163_NO_SHIFT_REG = ~(local_bb2_c1_exit_c1_exi3_enable);
assign rnode_162to163_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG = 1'b1;

// This section implements a registered operation.
// 
wire SFC_1_VALID_162_163_0_inputs_ready;
 reg SFC_1_VALID_162_163_0_valid_out_NO_SHIFT_REG;
wire SFC_1_VALID_162_163_0_stall_in;
wire SFC_1_VALID_162_163_0_output_regs_ready;
 reg SFC_1_VALID_162_163_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_1_VALID_162_163_0_causedstall;

assign SFC_1_VALID_162_163_0_inputs_ready = 1'b1;
assign SFC_1_VALID_162_163_0_output_regs_ready = local_bb2_c1_exit_c1_exi3_enable;
assign SFC_1_VALID_162_162_0_stall_in = 1'b0;
assign SFC_1_VALID_162_163_0_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c1_exit_c1_exi3_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_1_VALID_162_163_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_1_VALID_162_163_0_output_regs_ready)
		begin
			SFC_1_VALID_162_163_0_NO_SHIFT_REG <= SFC_1_VALID_162_162_0;
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb2_mul8_inputs_ready;
 reg local_bb2_mul8_valid_out_NO_SHIFT_REG;
wire local_bb2_mul8_stall_in;
wire local_bb2_mul8_output_regs_ready;
wire [31:0] local_bb2_mul8;
 reg local_bb2_mul8_valid_pipe_0_NO_SHIFT_REG;
 reg local_bb2_mul8_valid_pipe_1_NO_SHIFT_REG;
wire local_bb2_mul8_causedstall;

acl_int_mult int_module_local_bb2_mul8 (
	.clock(clock),
	.dataa(local_bb2_memcoalesce__v_extrValue_0),
	.datab(local_bb2_memcoalesce__add_extrValue_0),
	.enable(local_bb2_mul8_output_regs_ready),
	.result(local_bb2_mul8)
);

defparam int_module_local_bb2_mul8.INPUT1_WIDTH = 32;
defparam int_module_local_bb2_mul8.INPUT2_WIDTH = 32;
defparam int_module_local_bb2_mul8.OUTPUT_WIDTH = 32;
defparam int_module_local_bb2_mul8.LATENCY = 3;
defparam int_module_local_bb2_mul8.SIGNED = 0;

assign local_bb2_mul8_inputs_ready = 1'b1;
assign local_bb2_mul8_output_regs_ready = local_bb2_c1_exit_c1_exi3_enable;
assign local_bb2_memcoalesce__v_extrValue_0_stall_in = 1'b0;
assign local_bb2_memcoalesce__add_extrValue_0_stall_in = 1'b0;
assign local_bb2_mul8_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c1_exit_c1_exi3_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_mul8_valid_pipe_0_NO_SHIFT_REG <= 1'b0;
		local_bb2_mul8_valid_pipe_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_mul8_output_regs_ready)
		begin
			local_bb2_mul8_valid_pipe_0_NO_SHIFT_REG <= 1'b1;
			local_bb2_mul8_valid_pipe_1_NO_SHIFT_REG <= local_bb2_mul8_valid_pipe_0_NO_SHIFT_REG;
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_mul8_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_mul8_output_regs_ready)
		begin
			local_bb2_mul8_valid_out_NO_SHIFT_REG <= 1'b1;
		end
		else
		begin
			if (~(local_bb2_mul8_stall_in))
			begin
				local_bb2_mul8_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb2_mul8_1_inputs_ready;
 reg local_bb2_mul8_1_valid_out_NO_SHIFT_REG;
wire local_bb2_mul8_1_stall_in;
wire local_bb2_mul8_1_output_regs_ready;
wire [31:0] local_bb2_mul8_1;
 reg local_bb2_mul8_1_valid_pipe_0_NO_SHIFT_REG;
 reg local_bb2_mul8_1_valid_pipe_1_NO_SHIFT_REG;
wire local_bb2_mul8_1_causedstall;

acl_int_mult int_module_local_bb2_mul8_1 (
	.clock(clock),
	.dataa(local_bb2_memcoalesce__v_extrValue_1),
	.datab(local_bb2_memcoalesce__add_extrValue_1),
	.enable(local_bb2_mul8_1_output_regs_ready),
	.result(local_bb2_mul8_1)
);

defparam int_module_local_bb2_mul8_1.INPUT1_WIDTH = 32;
defparam int_module_local_bb2_mul8_1.INPUT2_WIDTH = 32;
defparam int_module_local_bb2_mul8_1.OUTPUT_WIDTH = 32;
defparam int_module_local_bb2_mul8_1.LATENCY = 3;
defparam int_module_local_bb2_mul8_1.SIGNED = 0;

assign local_bb2_mul8_1_inputs_ready = 1'b1;
assign local_bb2_mul8_1_output_regs_ready = local_bb2_c1_exit_c1_exi3_enable;
assign local_bb2_memcoalesce__v_extrValue_1_stall_in = 1'b0;
assign local_bb2_memcoalesce__add_extrValue_1_stall_in = 1'b0;
assign local_bb2_mul8_1_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c1_exit_c1_exi3_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_mul8_1_valid_pipe_0_NO_SHIFT_REG <= 1'b0;
		local_bb2_mul8_1_valid_pipe_1_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_mul8_1_output_regs_ready)
		begin
			local_bb2_mul8_1_valid_pipe_0_NO_SHIFT_REG <= 1'b1;
			local_bb2_mul8_1_valid_pipe_1_NO_SHIFT_REG <= local_bb2_mul8_1_valid_pipe_0_NO_SHIFT_REG;
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb2_mul8_1_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb2_mul8_1_output_regs_ready)
		begin
			local_bb2_mul8_1_valid_out_NO_SHIFT_REG <= 1'b1;
		end
		else
		begin
			if (~(local_bb2_mul8_1_stall_in))
			begin
				local_bb2_mul8_1_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_163to164_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG;
 logic rnode_163to164_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_163to164_bb2_c1_ene3_0_NO_SHIFT_REG;
 logic rnode_163to164_bb2_c1_ene3_0_reg_164_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_163to164_bb2_c1_ene3_0_reg_164_NO_SHIFT_REG;
 logic rnode_163to164_bb2_c1_ene3_0_valid_out_reg_164_NO_SHIFT_REG;
 logic rnode_163to164_bb2_c1_ene3_0_stall_in_reg_164_NO_SHIFT_REG;
 logic rnode_163to164_bb2_c1_ene3_0_stall_out_reg_164_NO_SHIFT_REG;

acl_data_fifo rnode_163to164_bb2_c1_ene3_0_reg_164_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_163to164_bb2_c1_ene3_0_reg_164_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_163to164_bb2_c1_ene3_0_stall_in_reg_164_NO_SHIFT_REG),
	.valid_out(rnode_163to164_bb2_c1_ene3_0_valid_out_reg_164_NO_SHIFT_REG),
	.stall_out(rnode_163to164_bb2_c1_ene3_0_stall_out_reg_164_NO_SHIFT_REG),
	.data_in(rnode_162to163_bb2_c1_ene3_0_NO_SHIFT_REG),
	.data_out(rnode_163to164_bb2_c1_ene3_0_reg_164_NO_SHIFT_REG)
);

defparam rnode_163to164_bb2_c1_ene3_0_reg_164_fifo.DEPTH = 1;
defparam rnode_163to164_bb2_c1_ene3_0_reg_164_fifo.DATA_WIDTH = 32;
defparam rnode_163to164_bb2_c1_ene3_0_reg_164_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_163to164_bb2_c1_ene3_0_reg_164_fifo.IMPL = "shift_reg";

assign rnode_163to164_bb2_c1_ene3_0_reg_164_inputs_ready_NO_SHIFT_REG = 1'b1;
assign rnode_162to163_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG = 1'b0;
assign rnode_163to164_bb2_c1_ene3_0_NO_SHIFT_REG = rnode_163to164_bb2_c1_ene3_0_reg_164_NO_SHIFT_REG;
assign rnode_163to164_bb2_c1_ene3_0_stall_in_reg_164_NO_SHIFT_REG = ~(local_bb2_c1_exit_c1_exi3_enable);
assign rnode_163to164_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG = 1'b1;

// This section implements a registered operation.
// 
wire SFC_1_VALID_163_164_0_inputs_ready;
 reg SFC_1_VALID_163_164_0_valid_out_NO_SHIFT_REG;
wire SFC_1_VALID_163_164_0_stall_in;
wire SFC_1_VALID_163_164_0_output_regs_ready;
 reg SFC_1_VALID_163_164_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_1_VALID_163_164_0_causedstall;

assign SFC_1_VALID_163_164_0_inputs_ready = 1'b1;
assign SFC_1_VALID_163_164_0_output_regs_ready = local_bb2_c1_exit_c1_exi3_enable;
assign SFC_1_VALID_162_163_0_stall_in = 1'b0;
assign SFC_1_VALID_163_164_0_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c1_exit_c1_exi3_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_1_VALID_163_164_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_1_VALID_163_164_0_output_regs_ready)
		begin
			SFC_1_VALID_163_164_0_NO_SHIFT_REG <= SFC_1_VALID_162_163_0_NO_SHIFT_REG;
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_164to165_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG;
 logic rnode_164to165_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_164to165_bb2_c1_ene3_0_NO_SHIFT_REG;
 logic rnode_164to165_bb2_c1_ene3_0_reg_165_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_164to165_bb2_c1_ene3_0_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_bb2_c1_ene3_0_valid_out_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_bb2_c1_ene3_0_stall_in_reg_165_NO_SHIFT_REG;
 logic rnode_164to165_bb2_c1_ene3_0_stall_out_reg_165_NO_SHIFT_REG;

acl_data_fifo rnode_164to165_bb2_c1_ene3_0_reg_165_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_164to165_bb2_c1_ene3_0_reg_165_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_164to165_bb2_c1_ene3_0_stall_in_reg_165_NO_SHIFT_REG),
	.valid_out(rnode_164to165_bb2_c1_ene3_0_valid_out_reg_165_NO_SHIFT_REG),
	.stall_out(rnode_164to165_bb2_c1_ene3_0_stall_out_reg_165_NO_SHIFT_REG),
	.data_in(rnode_163to164_bb2_c1_ene3_0_NO_SHIFT_REG),
	.data_out(rnode_164to165_bb2_c1_ene3_0_reg_165_NO_SHIFT_REG)
);

defparam rnode_164to165_bb2_c1_ene3_0_reg_165_fifo.DEPTH = 1;
defparam rnode_164to165_bb2_c1_ene3_0_reg_165_fifo.DATA_WIDTH = 32;
defparam rnode_164to165_bb2_c1_ene3_0_reg_165_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_164to165_bb2_c1_ene3_0_reg_165_fifo.IMPL = "shift_reg";

assign rnode_164to165_bb2_c1_ene3_0_reg_165_inputs_ready_NO_SHIFT_REG = 1'b1;
assign rnode_163to164_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG = 1'b0;
assign rnode_164to165_bb2_c1_ene3_0_NO_SHIFT_REG = rnode_164to165_bb2_c1_ene3_0_reg_165_NO_SHIFT_REG;
assign rnode_164to165_bb2_c1_ene3_0_stall_in_reg_165_NO_SHIFT_REG = ~(local_bb2_c1_exit_c1_exi3_enable);
assign rnode_164to165_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG = 1'b1;

// This section implements a registered operation.
// 
wire SFC_1_VALID_164_165_0_inputs_ready;
 reg SFC_1_VALID_164_165_0_valid_out_NO_SHIFT_REG;
wire SFC_1_VALID_164_165_0_stall_in;
wire SFC_1_VALID_164_165_0_output_regs_ready;
 reg SFC_1_VALID_164_165_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_1_VALID_164_165_0_causedstall;

assign SFC_1_VALID_164_165_0_inputs_ready = 1'b1;
assign SFC_1_VALID_164_165_0_output_regs_ready = local_bb2_c1_exit_c1_exi3_enable;
assign SFC_1_VALID_163_164_0_stall_in = 1'b0;
assign SFC_1_VALID_164_165_0_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c1_exit_c1_exi3_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_1_VALID_164_165_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_1_VALID_164_165_0_output_regs_ready)
		begin
			SFC_1_VALID_164_165_0_NO_SHIFT_REG <= SFC_1_VALID_163_164_0_NO_SHIFT_REG;
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb2_c1_exi1_stall_local;
wire [127:0] local_bb2_c1_exi1;

assign local_bb2_c1_exi1[31:0] = 32'bx;
assign local_bb2_c1_exi1[63:32] = rnode_164to165_bb2_c1_ene3_0_NO_SHIFT_REG;
assign local_bb2_c1_exi1[127:64] = 64'bx;

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exi2_stall_local;
wire [127:0] local_bb2_c1_exi2;

assign local_bb2_c1_exi2[63:0] = local_bb2_c1_exi1[63:0];
assign local_bb2_c1_exi2[95:64] = local_bb2_mul8;
assign local_bb2_c1_exi2[127:96] = local_bb2_c1_exi1[127:96];

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exi3_valid_out;
wire local_bb2_c1_exi3_stall_in;
wire local_bb2_c1_exi3_inputs_ready;
wire local_bb2_c1_exi3_stall_local;
wire [127:0] local_bb2_c1_exi3;

assign local_bb2_c1_exi3_inputs_ready = (local_bb2_mul8_valid_out_NO_SHIFT_REG & local_bb2_mul8_1_valid_out_NO_SHIFT_REG & rnode_164to165_bb2_c1_ene3_0_valid_out_NO_SHIFT_REG);
assign local_bb2_c1_exi3[95:0] = local_bb2_c1_exi2[95:0];
assign local_bb2_c1_exi3[127:96] = local_bb2_mul8_1;
assign local_bb2_c1_exi3_valid_out = 1'b1;
assign local_bb2_mul8_stall_in = 1'b0;
assign local_bb2_mul8_1_stall_in = 1'b0;
assign rnode_164to165_bb2_c1_ene3_0_stall_in_NO_SHIFT_REG = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exit_c1_exi3_valid_out;
wire local_bb2_c1_exit_c1_exi3_stall_in;
wire local_bb2_c1_exit_c1_exi3_inputs_ready;
wire local_bb2_c1_exit_c1_exi3_stall_local;
wire [127:0] local_bb2_c1_exit_c1_exi3;
wire local_bb2_c1_exit_c1_exi3_valid;
wire local_bb2_c1_exit_c1_exi3_fu_stall_out;

acl_enable_sink local_bb2_c1_exit_c1_exi3_instance (
	.clock(clock),
	.resetn(resetn),
	.data_in(local_bb2_c1_exi3),
	.data_out(local_bb2_c1_exit_c1_exi3),
	.input_accepted(local_bb2_c1_enter_c1_eni3_input_accepted),
	.valid_out(local_bb2_c1_exit_c1_exi3_valid),
	.stall_in(local_bb2_c1_exit_c1_exi3_stall_local),
	.enable(local_bb2_c1_exit_c1_exi3_enable),
	.valid_in(local_bb2_c1_exit_c1_exi3_valid_in),
	.stall_entry(local_bb2_c1_exit_c1_exi3_entry_stall),
	.inc_pipelined_thread(local_bb2_c1_enter_c1_eni3_inc_pipelined_thread),
	.dec_pipelined_thread(local_bb2_c1_enter_c1_eni3_dec_pipelined_thread)
);

defparam local_bb2_c1_exit_c1_exi3_instance.DATA_WIDTH = 128;
defparam local_bb2_c1_exit_c1_exi3_instance.PIPELINE_DEPTH = 3;
defparam local_bb2_c1_exit_c1_exi3_instance.SCHEDULEII = 1;
defparam local_bb2_c1_exit_c1_exi3_instance.IP_PIPELINE_LATENCY_PLUS1 = 1;

assign local_bb2_c1_exit_c1_exi3_inputs_ready = (local_bb2_c1_exi3_valid_out & SFC_1_VALID_164_165_0_valid_out_NO_SHIFT_REG);
assign local_bb2_c1_exit_c1_exi3_valid_in = SFC_1_VALID_164_165_0_NO_SHIFT_REG;
assign local_bb2_c1_exit_c1_exi3_fu_stall_out = ~(local_bb2_c1_exit_c1_exi3_enable);
assign local_bb2_c1_exit_c1_exi3_valid_out = local_bb2_c1_exit_c1_exi3_valid;
assign local_bb2_c1_exit_c1_exi3_stall_local = local_bb2_c1_exit_c1_exi3_stall_in;
assign local_bb2_c1_exi3_stall_in = 1'b0;
assign SFC_1_VALID_164_165_0_stall_in = 1'b0;

// Register node:
//  * latency = 0
//  * capacity = 2
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_NO_SHIFT_REG;
 logic [127:0] rnode_165to165_bb2_c1_exit_c1_exi3_0_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_1_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_1_NO_SHIFT_REG;
 logic [127:0] rnode_165to165_bb2_c1_exit_c1_exi3_1_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_2_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_2_NO_SHIFT_REG;
 logic [127:0] rnode_165to165_bb2_c1_exit_c1_exi3_2_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_inputs_ready_NO_SHIFT_REG;
 logic [127:0] rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_reg_165_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_reg_165_NO_SHIFT_REG;
 logic rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_out_reg_165_NO_SHIFT_REG;

acl_data_fifo rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_reg_165_NO_SHIFT_REG),
	.valid_out(rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_reg_165_NO_SHIFT_REG),
	.stall_out(rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_out_reg_165_NO_SHIFT_REG),
	.data_in(local_bb2_c1_exit_c1_exi3),
	.data_out(rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_NO_SHIFT_REG)
);

defparam rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_fifo.DEPTH = 3;
defparam rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_fifo.DATA_WIDTH = 128;
defparam rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_fifo.IMPL = "zl_reg";

assign rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_inputs_ready_NO_SHIFT_REG = local_bb2_c1_exit_c1_exi3_valid_out;
assign local_bb2_c1_exit_c1_exi3_stall_in = rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_out_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_reg_165_NO_SHIFT_REG = (rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_NO_SHIFT_REG | rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_1_NO_SHIFT_REG | rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_2_NO_SHIFT_REG);
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_1_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_2_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_1_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_NO_SHIFT_REG;
assign rnode_165to165_bb2_c1_exit_c1_exi3_2_NO_SHIFT_REG = rnode_165to165_bb2_c1_exit_c1_exi3_0_reg_165_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exe3_stall_local;
wire [31:0] local_bb2_c1_exe3;

assign local_bb2_c1_exe3 = rnode_165to165_bb2_c1_exit_c1_exi3_0_NO_SHIFT_REG[127:96];

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exe2_stall_local;
wire [31:0] local_bb2_c1_exe2;

assign local_bb2_c1_exe2 = rnode_165to165_bb2_c1_exit_c1_exi3_1_NO_SHIFT_REG[95:64];

// This section implements an unregistered operation.
// 
wire local_bb2_c1_exe1_stall_local;
wire [31:0] local_bb2_c1_exe1;

assign local_bb2_c1_exe1 = rnode_165to165_bb2_c1_exit_c1_exi3_2_NO_SHIFT_REG[63:32];

// This section implements an unregistered operation.
// 
wire local_bb2_c2_eni1_stall_local;
wire [127:0] local_bb2_c2_eni1;

assign local_bb2_c2_eni1[31:0] = 32'bx;
assign local_bb2_c2_eni1[63:32] = local_bb2_c1_exe1;
assign local_bb2_c2_eni1[127:64] = 64'bx;

// This section implements an unregistered operation.
// 
wire local_bb2_c2_eni2_stall_local;
wire [127:0] local_bb2_c2_eni2;

assign local_bb2_c2_eni2[63:0] = local_bb2_c2_eni1[63:0];
assign local_bb2_c2_eni2[95:64] = local_bb2_c1_exe2;
assign local_bb2_c2_eni2[127:96] = local_bb2_c2_eni1[127:96];

// This section implements an unregistered operation.
// 
wire local_bb2_c2_eni3_valid_out;
wire local_bb2_c2_eni3_stall_in;
wire local_bb2_c2_eni3_inputs_ready;
wire local_bb2_c2_eni3_stall_local;
wire [127:0] local_bb2_c2_eni3;

assign local_bb2_c2_eni3_inputs_ready = (rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_0_NO_SHIFT_REG & rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_1_NO_SHIFT_REG & rnode_165to165_bb2_c1_exit_c1_exi3_0_valid_out_2_NO_SHIFT_REG);
assign local_bb2_c2_eni3[95:0] = local_bb2_c2_eni2[95:0];
assign local_bb2_c2_eni3[127:96] = local_bb2_c1_exe3;
assign local_bb2_c2_eni3_valid_out = local_bb2_c2_eni3_inputs_ready;
assign local_bb2_c2_eni3_stall_local = local_bb2_c2_eni3_stall_in;
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_0_NO_SHIFT_REG = (local_bb2_c2_eni3_stall_local | ~(local_bb2_c2_eni3_inputs_ready));
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_1_NO_SHIFT_REG = (local_bb2_c2_eni3_stall_local | ~(local_bb2_c2_eni3_inputs_ready));
assign rnode_165to165_bb2_c1_exit_c1_exi3_0_stall_in_2_NO_SHIFT_REG = (local_bb2_c2_eni3_stall_local | ~(local_bb2_c2_eni3_inputs_ready));

// This section implements an unregistered operation.
// 
wire local_bb2_c2_enter_c2_eni3_valid_out_0;
wire local_bb2_c2_enter_c2_eni3_stall_in_0;
wire local_bb2_c2_enter_c2_eni3_valid_out_1;
wire local_bb2_c2_enter_c2_eni3_stall_in_1;
wire local_bb2_c2_enter_c2_eni3_valid_out_2;
wire local_bb2_c2_enter_c2_eni3_stall_in_2;
wire local_bb2_c2_enter_c2_eni3_valid_out_3;
wire local_bb2_c2_enter_c2_eni3_stall_in_3;
wire local_bb2_c2_enter_c2_eni3_inputs_ready;
wire local_bb2_c2_enter_c2_eni3_stall_local;
wire local_bb2_c2_enter_c2_eni3_input_accepted;
wire [127:0] local_bb2_c2_enter_c2_eni3;
wire local_bb2_c2_exit_c2_exi2_enable;
wire local_bb2_c2_exit_c2_exi2_entry_stall;
wire local_bb2_c2_enter_c2_eni3_valid_bit;
wire local_bb2_c2_exit_c2_exi2_output_regs_ready;
wire local_bb2_c2_exit_c2_exi2_valid_in;
wire local_bb2_c2_exit_c2_exi2_phases;
wire local_bb2_c2_enter_c2_eni3_inc_pipelined_thread;
wire local_bb2_c2_enter_c2_eni3_dec_pipelined_thread;
wire local_bb2_c2_enter_c2_eni3_fu_stall_out;

assign local_bb2_c2_enter_c2_eni3_inputs_ready = local_bb2_c2_eni3_valid_out;
assign local_bb2_c2_enter_c2_eni3 = local_bb2_c2_eni3;
assign local_bb2_c2_enter_c2_eni3_input_accepted = (local_bb2_c2_enter_c2_eni3_inputs_ready && !(local_bb2_c2_exit_c2_exi2_entry_stall));
assign local_bb2_c2_enter_c2_eni3_valid_bit = local_bb2_c2_enter_c2_eni3_input_accepted;
assign local_bb2_c2_enter_c2_eni3_inc_pipelined_thread = 1'b1;
assign local_bb2_c2_enter_c2_eni3_dec_pipelined_thread = ~(1'b0);
assign local_bb2_c2_enter_c2_eni3_fu_stall_out = (~(local_bb2_c2_enter_c2_eni3_inputs_ready) | local_bb2_c2_exit_c2_exi2_entry_stall);
assign local_bb2_c2_enter_c2_eni3_stall_local = (local_bb2_c2_enter_c2_eni3_stall_in_0 | local_bb2_c2_enter_c2_eni3_stall_in_1 | local_bb2_c2_enter_c2_eni3_stall_in_2 | local_bb2_c2_enter_c2_eni3_stall_in_3);
assign local_bb2_c2_enter_c2_eni3_valid_out_0 = local_bb2_c2_enter_c2_eni3_inputs_ready;
assign local_bb2_c2_enter_c2_eni3_valid_out_1 = local_bb2_c2_enter_c2_eni3_inputs_ready;
assign local_bb2_c2_enter_c2_eni3_valid_out_2 = local_bb2_c2_enter_c2_eni3_inputs_ready;
assign local_bb2_c2_enter_c2_eni3_valid_out_3 = local_bb2_c2_enter_c2_eni3_inputs_ready;
assign local_bb2_c2_eni3_stall_in = (|local_bb2_c2_enter_c2_eni3_fu_stall_out);

// This section implements an unregistered operation.
// 
wire local_bb2_c2_ene1_stall_local;
wire [31:0] local_bb2_c2_ene1;

assign local_bb2_c2_ene1 = local_bb2_c2_enter_c2_eni3[63:32];

// This section implements an unregistered operation.
// 
wire local_bb2_c2_ene2_stall_local;
wire [31:0] local_bb2_c2_ene2;

assign local_bb2_c2_ene2 = local_bb2_c2_enter_c2_eni3[95:64];

// This section implements an unregistered operation.
// 
wire local_bb2_c2_ene3_valid_out;
wire local_bb2_c2_ene3_stall_in;
wire local_bb2_c2_ene3_inputs_ready;
wire local_bb2_c2_ene3_stall_local;
wire [31:0] local_bb2_c2_ene3;

assign local_bb2_c2_ene3_inputs_ready = local_bb2_c2_enter_c2_eni3_valid_out_2;
assign local_bb2_c2_ene3 = local_bb2_c2_enter_c2_eni3[127:96];
assign local_bb2_c2_ene3_valid_out = 1'b1;
assign local_bb2_c2_enter_c2_eni3_stall_in_2 = 1'b0;

// This section implements an unregistered operation.
// 
wire SFC_2_VALID_165_165_0_valid_out;
wire SFC_2_VALID_165_165_0_stall_in;
wire SFC_2_VALID_165_165_0_inputs_ready;
wire SFC_2_VALID_165_165_0_stall_local;
wire SFC_2_VALID_165_165_0;

assign SFC_2_VALID_165_165_0_inputs_ready = local_bb2_c2_enter_c2_eni3_valid_out_3;
assign SFC_2_VALID_165_165_0 = local_bb2_c2_enter_c2_eni3_valid_bit;
assign SFC_2_VALID_165_165_0_valid_out = 1'b1;
assign local_bb2_c2_enter_c2_eni3_stall_in_3 = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_var__valid_out;
wire local_bb2_var__stall_in;
wire local_bb2_var__inputs_ready;
wire local_bb2_var__stall_local;
wire [31:0] local_bb2_var_;

assign local_bb2_var__inputs_ready = (local_bb2_c2_enter_c2_eni3_valid_out_0 & local_bb2_c2_enter_c2_eni3_valid_out_1);
assign local_bb2_var_ = (local_bb2_c2_ene1 + local_bb2_c2_ene2);
assign local_bb2_var__valid_out = 1'b1;
assign local_bb2_c2_enter_c2_eni3_stall_in_0 = 1'b0;
assign local_bb2_c2_enter_c2_eni3_stall_in_1 = 1'b0;

// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_165to166_bb2_c2_ene3_0_valid_out_NO_SHIFT_REG;
 logic rnode_165to166_bb2_c2_ene3_0_stall_in_NO_SHIFT_REG;
 logic [31:0] rnode_165to166_bb2_c2_ene3_0_NO_SHIFT_REG;
 logic rnode_165to166_bb2_c2_ene3_0_reg_166_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_165to166_bb2_c2_ene3_0_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_c2_ene3_0_valid_out_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_c2_ene3_0_stall_in_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_c2_ene3_0_stall_out_reg_166_NO_SHIFT_REG;

acl_data_fifo rnode_165to166_bb2_c2_ene3_0_reg_166_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_165to166_bb2_c2_ene3_0_reg_166_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_165to166_bb2_c2_ene3_0_stall_in_reg_166_NO_SHIFT_REG),
	.valid_out(rnode_165to166_bb2_c2_ene3_0_valid_out_reg_166_NO_SHIFT_REG),
	.stall_out(rnode_165to166_bb2_c2_ene3_0_stall_out_reg_166_NO_SHIFT_REG),
	.data_in(local_bb2_c2_ene3),
	.data_out(rnode_165to166_bb2_c2_ene3_0_reg_166_NO_SHIFT_REG)
);

defparam rnode_165to166_bb2_c2_ene3_0_reg_166_fifo.DEPTH = 1;
defparam rnode_165to166_bb2_c2_ene3_0_reg_166_fifo.DATA_WIDTH = 32;
defparam rnode_165to166_bb2_c2_ene3_0_reg_166_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_165to166_bb2_c2_ene3_0_reg_166_fifo.IMPL = "shift_reg";

assign rnode_165to166_bb2_c2_ene3_0_reg_166_inputs_ready_NO_SHIFT_REG = 1'b1;
assign local_bb2_c2_ene3_stall_in = 1'b0;
assign rnode_165to166_bb2_c2_ene3_0_NO_SHIFT_REG = rnode_165to166_bb2_c2_ene3_0_reg_166_NO_SHIFT_REG;
assign rnode_165to166_bb2_c2_ene3_0_stall_in_reg_166_NO_SHIFT_REG = ~(local_bb2_c2_exit_c2_exi2_enable);
assign rnode_165to166_bb2_c2_ene3_0_valid_out_NO_SHIFT_REG = 1'b1;

// This section implements a registered operation.
// 
wire SFC_2_VALID_165_166_0_inputs_ready;
 reg SFC_2_VALID_165_166_0_valid_out_NO_SHIFT_REG;
wire SFC_2_VALID_165_166_0_stall_in;
wire SFC_2_VALID_165_166_0_output_regs_ready;
 reg SFC_2_VALID_165_166_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_2_VALID_165_166_0_causedstall;

assign SFC_2_VALID_165_166_0_inputs_ready = 1'b1;
assign SFC_2_VALID_165_166_0_output_regs_ready = local_bb2_c2_exit_c2_exi2_enable;
assign SFC_2_VALID_165_165_0_stall_in = 1'b0;
assign SFC_2_VALID_165_166_0_causedstall = (1'b1 && (1'b0 && !(~(local_bb2_c2_exit_c2_exi2_enable))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_2_VALID_165_166_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_2_VALID_165_166_0_output_regs_ready)
		begin
			SFC_2_VALID_165_166_0_NO_SHIFT_REG <= SFC_2_VALID_165_165_0;
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_165to166_bb2_var__0_valid_out_0_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_stall_in_0_NO_SHIFT_REG;
 logic [31:0] rnode_165to166_bb2_var__0_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_valid_out_1_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_stall_in_1_NO_SHIFT_REG;
 logic [31:0] rnode_165to166_bb2_var__1_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_reg_166_inputs_ready_NO_SHIFT_REG;
 logic [31:0] rnode_165to166_bb2_var__0_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_valid_out_0_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_stall_in_0_reg_166_NO_SHIFT_REG;
 logic rnode_165to166_bb2_var__0_stall_out_reg_166_NO_SHIFT_REG;

acl_data_fifo rnode_165to166_bb2_var__0_reg_166_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_165to166_bb2_var__0_reg_166_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_165to166_bb2_var__0_stall_in_0_reg_166_NO_SHIFT_REG),
	.valid_out(rnode_165to166_bb2_var__0_valid_out_0_reg_166_NO_SHIFT_REG),
	.stall_out(rnode_165to166_bb2_var__0_stall_out_reg_166_NO_SHIFT_REG),
	.data_in(local_bb2_var_),
	.data_out(rnode_165to166_bb2_var__0_reg_166_NO_SHIFT_REG)
);

defparam rnode_165to166_bb2_var__0_reg_166_fifo.DEPTH = 1;
defparam rnode_165to166_bb2_var__0_reg_166_fifo.DATA_WIDTH = 32;
defparam rnode_165to166_bb2_var__0_reg_166_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_165to166_bb2_var__0_reg_166_fifo.IMPL = "shift_reg";

assign rnode_165to166_bb2_var__0_reg_166_inputs_ready_NO_SHIFT_REG = 1'b1;
assign local_bb2_var__stall_in = 1'b0;
assign rnode_165to166_bb2_var__0_stall_in_0_reg_166_NO_SHIFT_REG = ~(local_bb2_c2_exit_c2_exi2_enable);
assign rnode_165to166_bb2_var__0_valid_out_0_NO_SHIFT_REG = 1'b1;
assign rnode_165to166_bb2_var__0_NO_SHIFT_REG = rnode_165to166_bb2_var__0_reg_166_NO_SHIFT_REG;
assign rnode_165to166_bb2_var__0_valid_out_1_NO_SHIFT_REG = 1'b1;
assign rnode_165to166_bb2_var__1_NO_SHIFT_REG = rnode_165to166_bb2_var__0_reg_166_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb2_var__u1_stall_local;
wire [31:0] local_bb2_var__u1;

assign local_bb2_var__u1 = (rnode_165to166_bb2_var__0_NO_SHIFT_REG + rnode_165to166_bb2_c2_ene3_0_NO_SHIFT_REG);

// This section implements an unregistered operation.
// 
wire local_bb2_c2_exi1_stall_local;
wire [95:0] local_bb2_c2_exi1;

assign local_bb2_c2_exi1[31:0] = 32'bx;
assign local_bb2_c2_exi1[63:32] = rnode_165to166_bb2_var__1_NO_SHIFT_REG;
assign local_bb2_c2_exi1[95:64] = 32'bx;

// This section implements an unregistered operation.
// 
wire local_bb2_c2_exi2_valid_out;
wire local_bb2_c2_exi2_stall_in;
wire local_bb2_c2_exi2_inputs_ready;
wire local_bb2_c2_exi2_stall_local;
wire [95:0] local_bb2_c2_exi2;

assign local_bb2_c2_exi2_inputs_ready = (rnode_165to166_bb2_var__0_valid_out_0_NO_SHIFT_REG & rnode_165to166_bb2_c2_ene3_0_valid_out_NO_SHIFT_REG & rnode_165to166_bb2_var__0_valid_out_1_NO_SHIFT_REG);
assign local_bb2_c2_exi2[63:0] = local_bb2_c2_exi1[63:0];
assign local_bb2_c2_exi2[95:64] = local_bb2_var__u1;
assign local_bb2_c2_exi2_valid_out = 1'b1;
assign rnode_165to166_bb2_var__0_stall_in_0_NO_SHIFT_REG = 1'b0;
assign rnode_165to166_bb2_c2_ene3_0_stall_in_NO_SHIFT_REG = 1'b0;
assign rnode_165to166_bb2_var__0_stall_in_1_NO_SHIFT_REG = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_c2_exit_c2_exi2_valid_out_0;
wire local_bb2_c2_exit_c2_exi2_stall_in_0;
wire local_bb2_c2_exit_c2_exi2_valid_out_1;
wire local_bb2_c2_exit_c2_exi2_stall_in_1;
wire local_bb2_c2_exit_c2_exi2_inputs_ready;
wire local_bb2_c2_exit_c2_exi2_stall_local;
wire [95:0] local_bb2_c2_exit_c2_exi2;
wire local_bb2_c2_exit_c2_exi2_valid;
wire local_bb2_c2_exit_c2_exi2_fu_stall_out;

acl_enable_sink local_bb2_c2_exit_c2_exi2_instance (
	.clock(clock),
	.resetn(resetn),
	.data_in(local_bb2_c2_exi2),
	.data_out(local_bb2_c2_exit_c2_exi2),
	.input_accepted(local_bb2_c2_enter_c2_eni3_input_accepted),
	.valid_out(local_bb2_c2_exit_c2_exi2_valid),
	.stall_in(local_bb2_c2_exit_c2_exi2_stall_local),
	.enable(local_bb2_c2_exit_c2_exi2_enable),
	.valid_in(local_bb2_c2_exit_c2_exi2_valid_in),
	.stall_entry(local_bb2_c2_exit_c2_exi2_entry_stall),
	.inc_pipelined_thread(local_bb2_c2_enter_c2_eni3_inc_pipelined_thread),
	.dec_pipelined_thread(local_bb2_c2_enter_c2_eni3_dec_pipelined_thread)
);

defparam local_bb2_c2_exit_c2_exi2_instance.DATA_WIDTH = 96;
defparam local_bb2_c2_exit_c2_exi2_instance.PIPELINE_DEPTH = 1;
defparam local_bb2_c2_exit_c2_exi2_instance.SCHEDULEII = 1;
defparam local_bb2_c2_exit_c2_exi2_instance.IP_PIPELINE_LATENCY_PLUS1 = 1;

assign local_bb2_c2_exit_c2_exi2_inputs_ready = (local_bb2_c2_exi2_valid_out & SFC_2_VALID_165_166_0_valid_out_NO_SHIFT_REG);
assign local_bb2_c2_exit_c2_exi2_valid_in = SFC_2_VALID_165_166_0_NO_SHIFT_REG;
assign local_bb2_c2_exit_c2_exi2_fu_stall_out = ~(local_bb2_c2_exit_c2_exi2_enable);
assign local_bb2_c2_exit_c2_exi2_stall_local = (local_bb2_c2_exit_c2_exi2_stall_in_0 | local_bb2_c2_exit_c2_exi2_stall_in_1);
assign local_bb2_c2_exit_c2_exi2_valid_out_0 = local_bb2_c2_exit_c2_exi2_valid;
assign local_bb2_c2_exit_c2_exi2_valid_out_1 = local_bb2_c2_exit_c2_exi2_valid;
assign local_bb2_c2_exi2_stall_in = 1'b0;
assign SFC_2_VALID_165_166_0_stall_in = 1'b0;

// This section implements an unregistered operation.
// 
wire local_bb2_c2_exe2_valid_out;
wire local_bb2_c2_exe2_stall_in;
wire local_bb2_c2_exe2_inputs_ready;
wire local_bb2_c2_exe2_stall_local;
wire [31:0] local_bb2_c2_exe2;

assign local_bb2_c2_exe2_inputs_ready = local_bb2_c2_exit_c2_exi2_valid_out_0;
assign local_bb2_c2_exe2 = local_bb2_c2_exit_c2_exi2[95:64];
assign local_bb2_c2_exe2_valid_out = local_bb2_c2_exe2_inputs_ready;
assign local_bb2_c2_exe2_stall_local = local_bb2_c2_exe2_stall_in;
assign local_bb2_c2_exit_c2_exi2_stall_in_0 = (|local_bb2_c2_exe2_stall_local);

// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
 reg branch_node_valid_out_0_NO_SHIFT_REG;
 reg branch_compare_result_NO_SHIFT_REG;
wire branch_var__output_regs_ready;
wire combined_branch_stall_in_signal;
 reg [63:0] lvb_var__0_reg_NO_SHIFT_REG;
 reg [31:0] lvb_mul_0_reg_NO_SHIFT_REG;
 reg [31:0] lvb_bb2_inc13_1_0_reg_NO_SHIFT_REG;
 reg lvb_bb2_exitcond_0_reg_NO_SHIFT_REG;
 reg [95:0] lvb_bb2_c2_exit_c2_exi2_0_reg_NO_SHIFT_REG;
 reg [31:0] lvb_bb2_c2_exe2_0_reg_NO_SHIFT_REG;

assign branch_var__inputs_ready = (local_bb2_c2_exe2_valid_out & local_bb2__12_demorgan_GUARD_valid_out & local_bb2_c2_exit_c2_exi2_valid_out_1 & rcnode_165to166_rc0_bb2_inc13_1_0_valid_out_1_NO_SHIFT_REG);
assign branch_var__output_regs_ready = (~(branch_node_valid_out_0_NO_SHIFT_REG) | (((branch_compare_result_NO_SHIFT_REG != 1'b1) & ~(stall_in_1)) | (~((branch_compare_result_NO_SHIFT_REG != 1'b1)) & ~(stall_in_0))));
assign local_bb2_c2_exe2_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign local_bb2__12_demorgan_GUARD_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign local_bb2_c2_exit_c2_exi2_stall_in_1 = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign rcnode_165to166_rc0_bb2_inc13_1_0_stall_in_1_NO_SHIFT_REG = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign lvb_var__0 = lvb_var__0_reg_NO_SHIFT_REG;
assign lvb_var__1 = lvb_var__0_reg_NO_SHIFT_REG;
assign lvb_mul_0 = lvb_mul_0_reg_NO_SHIFT_REG;
assign lvb_mul_1 = lvb_mul_0_reg_NO_SHIFT_REG;
assign lvb_bb2_inc13_1_0 = lvb_bb2_inc13_1_0_reg_NO_SHIFT_REG;
assign lvb_bb2_inc13_1_1 = lvb_bb2_inc13_1_0_reg_NO_SHIFT_REG;
assign lvb_bb2_exitcond_0 = lvb_bb2_exitcond_0_reg_NO_SHIFT_REG;
assign lvb_bb2_exitcond_1 = lvb_bb2_exitcond_0_reg_NO_SHIFT_REG;
assign lvb_bb2_c2_exit_c2_exi2_0 = lvb_bb2_c2_exit_c2_exi2_0_reg_NO_SHIFT_REG;
assign lvb_bb2_c2_exit_c2_exi2_1 = lvb_bb2_c2_exit_c2_exi2_0_reg_NO_SHIFT_REG;
assign lvb_bb2_c2_exe2_0 = lvb_bb2_c2_exe2_0_reg_NO_SHIFT_REG;
assign lvb_bb2_c2_exe2_1 = lvb_bb2_c2_exe2_0_reg_NO_SHIFT_REG;
assign valid_out_0 = (~((branch_compare_result_NO_SHIFT_REG != 1'b1)) & branch_node_valid_out_0_NO_SHIFT_REG);
assign valid_out_1 = ((branch_compare_result_NO_SHIFT_REG != 1'b1) & branch_node_valid_out_0_NO_SHIFT_REG);
assign combined_branch_stall_in_signal = ((((branch_compare_result_NO_SHIFT_REG != 1'b1) & branch_node_valid_out_0_NO_SHIFT_REG) & stall_in_1) | ((~((branch_compare_result_NO_SHIFT_REG != 1'b1)) & branch_node_valid_out_0_NO_SHIFT_REG) & stall_in_0));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		branch_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
		lvb_var__0_reg_NO_SHIFT_REG <= 'x;
		lvb_mul_0_reg_NO_SHIFT_REG <= 'x;
		lvb_bb2_inc13_1_0_reg_NO_SHIFT_REG <= 'x;
		lvb_bb2_exitcond_0_reg_NO_SHIFT_REG <= 'x;
		lvb_bb2_c2_exit_c2_exi2_0_reg_NO_SHIFT_REG <= 'x;
		lvb_bb2_c2_exe2_0_reg_NO_SHIFT_REG <= 'x;
		branch_compare_result_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (branch_var__output_regs_ready)
		begin
			branch_node_valid_out_0_NO_SHIFT_REG <= branch_var__inputs_ready;
			lvb_var__0_reg_NO_SHIFT_REG <= (rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[96:33] & 64'hFFFFFFFFFFFFFFFC);
			lvb_mul_0_reg_NO_SHIFT_REG <= rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[128:97];
			lvb_bb2_inc13_1_0_reg_NO_SHIFT_REG <= (rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[31:0] & 32'hFFFFFFFE);
			lvb_bb2_exitcond_0_reg_NO_SHIFT_REG <= rcnode_165to166_rc0_bb2_inc13_1_0_NO_SHIFT_REG[32];
			lvb_bb2_c2_exit_c2_exi2_0_reg_NO_SHIFT_REG <= local_bb2_c2_exit_c2_exi2;
			lvb_bb2_c2_exe2_0_reg_NO_SHIFT_REG <= local_bb2_c2_exe2;
			branch_compare_result_NO_SHIFT_REG <= local_bb2__12_demorgan_GUARD;
		end
		else
		begin
			if (~(combined_branch_stall_in_signal))
			begin
				branch_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_basic_block_3
	(
		input 		clock,
		input 		resetn,
		input [31:0] 		input_global_size_0,
		input 		input_wii_cmp4_NEG,
		input 		valid_in,
		output 		stall_out,
		input [63:0] 		input_var_,
		input 		input_exitcond,
		input [95:0] 		input_c2_exit_c2_exi2,
		input [31:0] 		input_c2_exe2,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		input 		start,
		output 		avm_local_bb3_st__18_enable,
		input [255:0] 		avm_local_bb3_st__18_readdata,
		input 		avm_local_bb3_st__18_readdatavalid,
		input 		avm_local_bb3_st__18_waitrequest,
		output [29:0] 		avm_local_bb3_st__18_address,
		output 		avm_local_bb3_st__18_read,
		output 		avm_local_bb3_st__18_write,
		input 		avm_local_bb3_st__18_writeack,
		output [255:0] 		avm_local_bb3_st__18_writedata,
		output [31:0] 		avm_local_bb3_st__18_byteenable,
		output [4:0] 		avm_local_bb3_st__18_burstcount,
		output 		local_bb3_st__18_active,
		input 		clock2x
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((&valid_in) & ~((|stall_out)));
assign _exit = ((&valid_out) & ~((|stall_in)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in_0;
 reg merge_node_valid_out_0_NO_SHIFT_REG;
wire merge_node_stall_in_1;
 reg merge_node_valid_out_1_NO_SHIFT_REG;
wire merge_node_stall_in_2;
 reg merge_node_valid_out_2_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_staging_reg_NO_SHIFT_REG;
 reg [63:0] input_var__staging_reg_NO_SHIFT_REG;
 reg input_exitcond_staging_reg_NO_SHIFT_REG;
 reg [95:0] input_c2_exit_c2_exi2_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_c2_exe2_staging_reg_NO_SHIFT_REG;
 reg [63:0] local_lvm_var__NO_SHIFT_REG;
 reg local_lvm_exitcond_NO_SHIFT_REG;
 reg [95:0] local_lvm_c2_exit_c2_exi2_NO_SHIFT_REG;
 reg [31:0] local_lvm_c2_exe2_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = ((merge_node_stall_in_0 & merge_node_valid_out_0_NO_SHIFT_REG) | (merge_node_stall_in_1 & merge_node_valid_out_1_NO_SHIFT_REG) | (merge_node_stall_in_2 & merge_node_valid_out_2_NO_SHIFT_REG));
assign stall_out = merge_node_valid_in_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_staging_reg_NO_SHIFT_REG | valid_in))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_var__staging_reg_NO_SHIFT_REG <= 'x;
		input_exitcond_staging_reg_NO_SHIFT_REG <= 'x;
		input_c2_exit_c2_exi2_staging_reg_NO_SHIFT_REG <= 'x;
		input_c2_exe2_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_staging_reg_NO_SHIFT_REG))
			begin
				input_var__staging_reg_NO_SHIFT_REG <= input_var_;
				input_exitcond_staging_reg_NO_SHIFT_REG <= input_exitcond;
				input_c2_exit_c2_exi2_staging_reg_NO_SHIFT_REG <= input_c2_exit_c2_exi2;
				input_c2_exe2_staging_reg_NO_SHIFT_REG <= input_c2_exe2;
				merge_node_valid_in_staging_reg_NO_SHIFT_REG <= valid_in;
			end
		end
		else
		begin
			merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var__staging_reg_NO_SHIFT_REG;
					local_lvm_exitcond_NO_SHIFT_REG <= input_exitcond_staging_reg_NO_SHIFT_REG;
					local_lvm_c2_exit_c2_exi2_NO_SHIFT_REG <= input_c2_exit_c2_exi2_staging_reg_NO_SHIFT_REG;
					local_lvm_c2_exe2_NO_SHIFT_REG <= input_c2_exe2_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_var__NO_SHIFT_REG <= input_var_;
					local_lvm_exitcond_NO_SHIFT_REG <= input_exitcond;
					local_lvm_c2_exit_c2_exi2_NO_SHIFT_REG <= input_c2_exit_c2_exi2;
					local_lvm_c2_exe2_NO_SHIFT_REG <= input_c2_exe2;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
		merge_node_valid_out_2_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_0_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_1_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
			merge_node_valid_out_2_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in_0))
			begin
				merge_node_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_1))
			begin
				merge_node_valid_out_1_NO_SHIFT_REG <= 1'b0;
			end
			if (~(merge_node_stall_in_2))
			begin
				merge_node_valid_out_2_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements an unregistered operation.
// 
wire local_bb3_c2_exe1_stall_local;
wire [31:0] local_bb3_c2_exe1;

assign local_bb3_c2_exe1 = local_lvm_c2_exit_c2_exi2_NO_SHIFT_REG[63:32];

// This section implements an unregistered operation.
// 
wire local_bb3__18_valid_out;
wire local_bb3__18_stall_in;
wire local_bb3__18_inputs_ready;
wire local_bb3__18_stall_local;
wire [31:0] local_bb3__18;

assign local_bb3__18_inputs_ready = (merge_node_valid_out_0_NO_SHIFT_REG & merge_node_valid_out_1_NO_SHIFT_REG);
assign local_bb3__18 = (local_lvm_exitcond_NO_SHIFT_REG ? local_bb3_c2_exe1 : local_lvm_c2_exe2_NO_SHIFT_REG);
assign local_bb3__18_valid_out = local_bb3__18_inputs_ready;
assign local_bb3__18_stall_local = local_bb3__18_stall_in;
assign merge_node_stall_in_0 = (local_bb3__18_stall_local | ~(local_bb3__18_inputs_ready));
assign merge_node_stall_in_1 = (local_bb3__18_stall_local | ~(local_bb3__18_inputs_ready));

// This section implements a registered operation.
// 
wire local_bb3_st__18_inputs_ready;
 reg local_bb3_st__18_valid_out_NO_SHIFT_REG;
wire local_bb3_st__18_stall_in;
wire local_bb3_st__18_output_regs_ready;
wire local_bb3_st__18_fu_stall_out;
wire local_bb3_st__18_fu_valid_out;
wire local_bb3_st__18_causedstall;

lsu_top lsu_local_bb3_st__18 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((local_lvm_var__NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb3_st__18_fu_stall_out),
	.i_valid(local_bb3_st__18_inputs_ready),
	.i_address((local_lvm_var__NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFC)),
	.i_writedata(local_bb3__18),
	.i_cmpdata(),
	.i_predicate(input_wii_cmp4_NEG),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb3_st__18_output_regs_ready)),
	.o_valid(local_bb3_st__18_fu_valid_out),
	.o_readdata(),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb3_st__18_active),
	.avm_address(avm_local_bb3_st__18_address),
	.avm_read(avm_local_bb3_st__18_read),
	.avm_enable(avm_local_bb3_st__18_enable),
	.avm_readdata(avm_local_bb3_st__18_readdata),
	.avm_write(avm_local_bb3_st__18_write),
	.avm_writeack(avm_local_bb3_st__18_writeack),
	.avm_burstcount(avm_local_bb3_st__18_burstcount),
	.avm_writedata(avm_local_bb3_st__18_writedata),
	.avm_byteenable(avm_local_bb3_st__18_byteenable),
	.avm_waitrequest(avm_local_bb3_st__18_waitrequest),
	.avm_readdatavalid(avm_local_bb3_st__18_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb3_st__18.AWIDTH = 30;
defparam lsu_local_bb3_st__18.WIDTH_BYTES = 4;
defparam lsu_local_bb3_st__18.MWIDTH_BYTES = 32;
defparam lsu_local_bb3_st__18.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb3_st__18.ALIGNMENT_BYTES = 4;
defparam lsu_local_bb3_st__18.READ = 0;
defparam lsu_local_bb3_st__18.ATOMIC = 0;
defparam lsu_local_bb3_st__18.WIDTH = 32;
defparam lsu_local_bb3_st__18.MWIDTH = 256;
defparam lsu_local_bb3_st__18.ATOMIC_WIDTH = 3;
defparam lsu_local_bb3_st__18.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb3_st__18.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb3_st__18.MEMORY_SIDE_MEM_LATENCY = 0;
defparam lsu_local_bb3_st__18.USE_WRITE_ACK = 0;
defparam lsu_local_bb3_st__18.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb3_st__18.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb3_st__18.NUMBER_BANKS = 1;
defparam lsu_local_bb3_st__18.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb3_st__18.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb3_st__18.USEINPUTFIFO = 0;
defparam lsu_local_bb3_st__18.USECACHING = 0;
defparam lsu_local_bb3_st__18.USEOUTPUTFIFO = 1;
defparam lsu_local_bb3_st__18.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb3_st__18.ADDRSPACE = 1;
defparam lsu_local_bb3_st__18.STYLE = "STREAMING";
defparam lsu_local_bb3_st__18.USE_BYTE_EN = 0;

assign local_bb3_st__18_inputs_ready = (local_bb3__18_valid_out & merge_node_valid_out_2_NO_SHIFT_REG);
assign local_bb3_st__18_output_regs_ready = (&(~(local_bb3_st__18_valid_out_NO_SHIFT_REG) | ~(local_bb3_st__18_stall_in)));
assign local_bb3__18_stall_in = (local_bb3_st__18_fu_stall_out | ~(local_bb3_st__18_inputs_ready));
assign merge_node_stall_in_2 = (local_bb3_st__18_fu_stall_out | ~(local_bb3_st__18_inputs_ready));
assign local_bb3_st__18_causedstall = (local_bb3_st__18_inputs_ready && (local_bb3_st__18_fu_stall_out && !(~(local_bb3_st__18_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb3_st__18_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb3_st__18_output_regs_ready)
		begin
			local_bb3_st__18_valid_out_NO_SHIFT_REG <= local_bb3_st__18_fu_valid_out;
		end
		else
		begin
			if (~(local_bb3_st__18_stall_in))
			begin
				local_bb3_st__18_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_3to3_bb3_st__18_valid_out;
wire rstag_3to3_bb3_st__18_stall_in;
wire rstag_3to3_bb3_st__18_inputs_ready;
wire rstag_3to3_bb3_st__18_stall_local;
 reg rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb3_st__18_combined_valid;

assign rstag_3to3_bb3_st__18_inputs_ready = local_bb3_st__18_valid_out_NO_SHIFT_REG;
assign rstag_3to3_bb3_st__18_combined_valid = (rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG | rstag_3to3_bb3_st__18_inputs_ready);
assign rstag_3to3_bb3_st__18_valid_out = rstag_3to3_bb3_st__18_combined_valid;
assign rstag_3to3_bb3_st__18_stall_local = rstag_3to3_bb3_st__18_stall_in;
assign local_bb3_st__18_stall_in = (|rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (rstag_3to3_bb3_st__18_stall_local)
		begin
			if (~(rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG <= rstag_3to3_bb3_st__18_inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb3_st__18_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
	end
end


// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
wire branch_var__output_regs_ready;

assign branch_var__inputs_ready = rstag_3to3_bb3_st__18_valid_out;
assign branch_var__output_regs_ready = ~(stall_in);
assign rstag_3to3_bb3_st__18_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign valid_out = branch_var__inputs_ready;

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_function
	(
		input 		clock,
		input 		resetn,
		input [31:0] 		input_global_id_0,
		output 		stall_out,
		input 		valid_in,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		output 		avm_local_bb1_ld__enable,
		input [255:0] 		avm_local_bb1_ld__readdata,
		input 		avm_local_bb1_ld__readdatavalid,
		input 		avm_local_bb1_ld__waitrequest,
		output [29:0] 		avm_local_bb1_ld__address,
		output 		avm_local_bb1_ld__read,
		output 		avm_local_bb1_ld__write,
		input 		avm_local_bb1_ld__writeack,
		output [255:0] 		avm_local_bb1_ld__writedata,
		output [31:0] 		avm_local_bb1_ld__byteenable,
		output [4:0] 		avm_local_bb1_ld__burstcount,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_address,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_read,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_write,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_burstcount,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_address,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_read,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_write,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_burstcount,
		output 		avm_local_bb3_st__18_enable,
		input [255:0] 		avm_local_bb3_st__18_readdata,
		input 		avm_local_bb3_st__18_readdatavalid,
		input 		avm_local_bb3_st__18_waitrequest,
		output [29:0] 		avm_local_bb3_st__18_address,
		output 		avm_local_bb3_st__18_read,
		output 		avm_local_bb3_st__18_write,
		input 		avm_local_bb3_st__18_writeack,
		output [255:0] 		avm_local_bb3_st__18_writedata,
		output [31:0] 		avm_local_bb3_st__18_byteenable,
		output [4:0] 		avm_local_bb3_st__18_burstcount,
		input 		start,
		input [31:0] 		input_size,
		input 		clock2x,
		input [63:0] 		input__mul,
		input [31:0] 		input_global_size_0,
		input [63:0] 		input__v,
		input [63:0] 		input__add,
		output reg 		has_a_write_pending,
		output reg 		has_a_lsu_active
	);


wire [31:0] cur_cycle;
wire bb_0_stall_out;
wire bb_0_valid_out;
wire bb_0_lvb_bb0_cmp4_NEG;
wire [31:0] bb_0_lvb_input_global_id_0;
wire bb_1_stall_out;
wire bb_1_valid_out;
wire [63:0] bb_1_lvb_bb1_var_;
wire [31:0] bb_1_lvb_bb1_ld_;
wire [31:0] bb_1_lvb_bb1_mul;
wire bb_1_local_bb1_ld__active;
wire bb_2_stall_out_0;
wire bb_2_stall_out_1;
wire bb_2_valid_out_0;
wire [63:0] bb_2_lvb_var__0;
wire [31:0] bb_2_lvb_mul_0;
wire [31:0] bb_2_lvb_bb2_inc13_1_0;
wire bb_2_lvb_bb2_exitcond_0;
wire [95:0] bb_2_lvb_bb2_c2_exit_c2_exi2_0;
wire [31:0] bb_2_lvb_bb2_c2_exe2_0;
wire bb_2_valid_out_1;
wire [63:0] bb_2_lvb_var__1;
wire [31:0] bb_2_lvb_mul_1;
wire [31:0] bb_2_lvb_bb2_inc13_1_1;
wire bb_2_lvb_bb2_exitcond_1;
wire [95:0] bb_2_lvb_bb2_c2_exit_c2_exi2_1;
wire [31:0] bb_2_lvb_bb2_c2_exe2_1;
wire bb_2_local_bb2_ld_memcoalesce__v_load_0_active;
wire bb_2_local_bb2_ld_memcoalesce__add_load_0_active;
wire bb_3_stall_out;
wire bb_3_valid_out;
wire bb_3_local_bb3_st__18_active;
wire loop_limiter_0_stall_out;
wire loop_limiter_0_valid_out;
wire writes_pending;
wire [3:0] lsus_active;

kernel_mul_basic_block_0 kernel_mul_basic_block_0 (
	.clock(clock),
	.resetn(resetn),
	.start(start),
	.input_size(input_size),
	.valid_in(valid_in),
	.stall_out(bb_0_stall_out),
	.input_global_id_0(input_global_id_0),
	.valid_out(bb_0_valid_out),
	.stall_in(bb_1_stall_out),
	.lvb_bb0_cmp4_NEG(bb_0_lvb_bb0_cmp4_NEG),
	.lvb_input_global_id_0(bb_0_lvb_input_global_id_0),
	.workgroup_size(workgroup_size)
);


kernel_mul_basic_block_1 kernel_mul_basic_block_1 (
	.clock(clock),
	.resetn(resetn),
	.input__mul(input__mul),
	.input_global_size_0(input_global_size_0),
	.input_size(input_size),
	.input_wii_cmp4_NEG(bb_0_lvb_bb0_cmp4_NEG),
	.valid_in(bb_0_valid_out),
	.stall_out(bb_1_stall_out),
	.input_global_id_0(bb_0_lvb_input_global_id_0),
	.valid_out(bb_1_valid_out),
	.stall_in(loop_limiter_0_stall_out),
	.lvb_bb1_var_(bb_1_lvb_bb1_var_),
	.lvb_bb1_ld_(bb_1_lvb_bb1_ld_),
	.lvb_bb1_mul(bb_1_lvb_bb1_mul),
	.workgroup_size(workgroup_size),
	.start(start),
	.avm_local_bb1_ld__enable(avm_local_bb1_ld__enable),
	.avm_local_bb1_ld__readdata(avm_local_bb1_ld__readdata),
	.avm_local_bb1_ld__readdatavalid(avm_local_bb1_ld__readdatavalid),
	.avm_local_bb1_ld__waitrequest(avm_local_bb1_ld__waitrequest),
	.avm_local_bb1_ld__address(avm_local_bb1_ld__address),
	.avm_local_bb1_ld__read(avm_local_bb1_ld__read),
	.avm_local_bb1_ld__write(avm_local_bb1_ld__write),
	.avm_local_bb1_ld__writeack(avm_local_bb1_ld__writeack),
	.avm_local_bb1_ld__writedata(avm_local_bb1_ld__writedata),
	.avm_local_bb1_ld__byteenable(avm_local_bb1_ld__byteenable),
	.avm_local_bb1_ld__burstcount(avm_local_bb1_ld__burstcount),
	.local_bb1_ld__active(bb_1_local_bb1_ld__active),
	.clock2x(clock2x)
);


kernel_mul_basic_block_2 kernel_mul_basic_block_2 (
	.clock(clock),
	.resetn(resetn),
	.input_size(input_size),
	.input__v(input__v),
	.input__add(input__add),
	.input_wii_cmp4_NEG(bb_0_lvb_bb0_cmp4_NEG),
	.valid_in_0(bb_2_valid_out_1),
	.stall_out_0(bb_2_stall_out_0),
	.input_var__0(bb_2_lvb_var__1),
	.input_mul_0(bb_2_lvb_mul_1),
	.input_add11_lcssa7_0(bb_2_lvb_bb2_c2_exe2_1),
	.input_c_05_0(bb_2_lvb_bb2_inc13_1_1),
	.valid_in_1(loop_limiter_0_valid_out),
	.stall_out_1(bb_2_stall_out_1),
	.input_var__1(bb_1_lvb_bb1_var_),
	.input_mul_1(bb_1_lvb_bb1_mul),
	.input_add11_lcssa7_1(bb_1_lvb_bb1_ld_),
	.input_c_05_1(32'h0),
	.valid_out_0(bb_2_valid_out_0),
	.stall_in_0(bb_3_stall_out),
	.lvb_var__0(bb_2_lvb_var__0),
	.lvb_mul_0(bb_2_lvb_mul_0),
	.lvb_bb2_inc13_1_0(bb_2_lvb_bb2_inc13_1_0),
	.lvb_bb2_exitcond_0(bb_2_lvb_bb2_exitcond_0),
	.lvb_bb2_c2_exit_c2_exi2_0(bb_2_lvb_bb2_c2_exit_c2_exi2_0),
	.lvb_bb2_c2_exe2_0(bb_2_lvb_bb2_c2_exe2_0),
	.valid_out_1(bb_2_valid_out_1),
	.stall_in_1(bb_2_stall_out_0),
	.lvb_var__1(bb_2_lvb_var__1),
	.lvb_mul_1(bb_2_lvb_mul_1),
	.lvb_bb2_inc13_1_1(bb_2_lvb_bb2_inc13_1_1),
	.lvb_bb2_exitcond_1(bb_2_lvb_bb2_exitcond_1),
	.lvb_bb2_c2_exit_c2_exi2_1(bb_2_lvb_bb2_c2_exit_c2_exi2_1),
	.lvb_bb2_c2_exe2_1(bb_2_lvb_bb2_c2_exe2_1),
	.workgroup_size(workgroup_size),
	.start(start),
	.avm_local_bb2_ld_memcoalesce__v_load_0_enable(avm_local_bb2_ld_memcoalesce__v_load_0_enable),
	.avm_local_bb2_ld_memcoalesce__v_load_0_readdata(avm_local_bb2_ld_memcoalesce__v_load_0_readdata),
	.avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid(avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid),
	.avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest(avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest),
	.avm_local_bb2_ld_memcoalesce__v_load_0_address(avm_local_bb2_ld_memcoalesce__v_load_0_address),
	.avm_local_bb2_ld_memcoalesce__v_load_0_read(avm_local_bb2_ld_memcoalesce__v_load_0_read),
	.avm_local_bb2_ld_memcoalesce__v_load_0_write(avm_local_bb2_ld_memcoalesce__v_load_0_write),
	.avm_local_bb2_ld_memcoalesce__v_load_0_writeack(avm_local_bb2_ld_memcoalesce__v_load_0_writeack),
	.avm_local_bb2_ld_memcoalesce__v_load_0_writedata(avm_local_bb2_ld_memcoalesce__v_load_0_writedata),
	.avm_local_bb2_ld_memcoalesce__v_load_0_byteenable(avm_local_bb2_ld_memcoalesce__v_load_0_byteenable),
	.avm_local_bb2_ld_memcoalesce__v_load_0_burstcount(avm_local_bb2_ld_memcoalesce__v_load_0_burstcount),
	.local_bb2_ld_memcoalesce__v_load_0_active(bb_2_local_bb2_ld_memcoalesce__v_load_0_active),
	.clock2x(clock2x),
	.avm_local_bb2_ld_memcoalesce__add_load_0_enable(avm_local_bb2_ld_memcoalesce__add_load_0_enable),
	.avm_local_bb2_ld_memcoalesce__add_load_0_readdata(avm_local_bb2_ld_memcoalesce__add_load_0_readdata),
	.avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid(avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid),
	.avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest(avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest),
	.avm_local_bb2_ld_memcoalesce__add_load_0_address(avm_local_bb2_ld_memcoalesce__add_load_0_address),
	.avm_local_bb2_ld_memcoalesce__add_load_0_read(avm_local_bb2_ld_memcoalesce__add_load_0_read),
	.avm_local_bb2_ld_memcoalesce__add_load_0_write(avm_local_bb2_ld_memcoalesce__add_load_0_write),
	.avm_local_bb2_ld_memcoalesce__add_load_0_writeack(avm_local_bb2_ld_memcoalesce__add_load_0_writeack),
	.avm_local_bb2_ld_memcoalesce__add_load_0_writedata(avm_local_bb2_ld_memcoalesce__add_load_0_writedata),
	.avm_local_bb2_ld_memcoalesce__add_load_0_byteenable(avm_local_bb2_ld_memcoalesce__add_load_0_byteenable),
	.avm_local_bb2_ld_memcoalesce__add_load_0_burstcount(avm_local_bb2_ld_memcoalesce__add_load_0_burstcount),
	.local_bb2_ld_memcoalesce__add_load_0_active(bb_2_local_bb2_ld_memcoalesce__add_load_0_active)
);


kernel_mul_basic_block_3 kernel_mul_basic_block_3 (
	.clock(clock),
	.resetn(resetn),
	.input_global_size_0(input_global_size_0),
	.input_wii_cmp4_NEG(bb_0_lvb_bb0_cmp4_NEG),
	.valid_in(bb_2_valid_out_0),
	.stall_out(bb_3_stall_out),
	.input_var_(bb_2_lvb_var__0),
	.input_exitcond(bb_2_lvb_bb2_exitcond_0),
	.input_c2_exit_c2_exi2(bb_2_lvb_bb2_c2_exit_c2_exi2_0),
	.input_c2_exe2(bb_2_lvb_bb2_c2_exe2_0),
	.valid_out(bb_3_valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size),
	.start(start),
	.avm_local_bb3_st__18_enable(avm_local_bb3_st__18_enable),
	.avm_local_bb3_st__18_readdata(avm_local_bb3_st__18_readdata),
	.avm_local_bb3_st__18_readdatavalid(avm_local_bb3_st__18_readdatavalid),
	.avm_local_bb3_st__18_waitrequest(avm_local_bb3_st__18_waitrequest),
	.avm_local_bb3_st__18_address(avm_local_bb3_st__18_address),
	.avm_local_bb3_st__18_read(avm_local_bb3_st__18_read),
	.avm_local_bb3_st__18_write(avm_local_bb3_st__18_write),
	.avm_local_bb3_st__18_writeack(avm_local_bb3_st__18_writeack),
	.avm_local_bb3_st__18_writedata(avm_local_bb3_st__18_writedata),
	.avm_local_bb3_st__18_byteenable(avm_local_bb3_st__18_byteenable),
	.avm_local_bb3_st__18_burstcount(avm_local_bb3_st__18_burstcount),
	.local_bb3_st__18_active(bb_3_local_bb3_st__18_active),
	.clock2x(clock2x)
);


acl_loop_limiter loop_limiter_0 (
	.clock(clock),
	.resetn(resetn),
	.i_valid(bb_1_valid_out),
	.i_stall(bb_2_stall_out_1),
	.i_valid_exit(bb_2_valid_out_0),
	.i_stall_exit(bb_3_stall_out),
	.o_valid(loop_limiter_0_valid_out),
	.o_stall(loop_limiter_0_stall_out)
);

defparam loop_limiter_0.ENTRY_WIDTH = 1;
defparam loop_limiter_0.EXIT_WIDTH = 1;
defparam loop_limiter_0.THRESHOLD = 167;

kernel_mul_sys_cycle_time system_cycle_time_module (
	.clock(clock),
	.resetn(resetn),
	.cur_cycle(cur_cycle)
);


assign valid_out = bb_3_valid_out;
assign stall_out = bb_0_stall_out;
assign writes_pending = bb_3_local_bb3_st__18_active;
assign lsus_active[0] = bb_1_local_bb1_ld__active;
assign lsus_active[1] = bb_2_local_bb2_ld_memcoalesce__v_load_0_active;
assign lsus_active[2] = bb_2_local_bb2_ld_memcoalesce__add_load_0_active;
assign lsus_active[3] = bb_3_local_bb3_st__18_active;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		has_a_write_pending <= 1'b0;
		has_a_lsu_active <= 1'b0;
	end
	else
	begin
		has_a_write_pending <= (|writes_pending);
		has_a_lsu_active <= (|lsus_active);
	end
end

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_function_wrapper
	(
		input 		clock,
		input 		resetn,
		input 		clock2x,
		input 		local_router_hang,
		input 		avs_cra_enable,
		input 		avs_cra_read,
		input 		avs_cra_write,
		input [3:0] 		avs_cra_address,
		input [63:0] 		avs_cra_writedata,
		input [7:0] 		avs_cra_byteenable,
		output reg [63:0] 		avs_cra_readdata,
		output reg 		avs_cra_readdatavalid,
		output 		cra_irq,
		output 		avm_local_bb1_ld__inst0_enable,
		input [255:0] 		avm_local_bb1_ld__inst0_readdata,
		input 		avm_local_bb1_ld__inst0_readdatavalid,
		input 		avm_local_bb1_ld__inst0_waitrequest,
		output [29:0] 		avm_local_bb1_ld__inst0_address,
		output 		avm_local_bb1_ld__inst0_read,
		output 		avm_local_bb1_ld__inst0_write,
		input 		avm_local_bb1_ld__inst0_writeack,
		output [255:0] 		avm_local_bb1_ld__inst0_writedata,
		output [31:0] 		avm_local_bb1_ld__inst0_byteenable,
		output [4:0] 		avm_local_bb1_ld__inst0_burstcount,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_address,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_read,
		output 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_write,
		input 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__v_load_0_inst0_burstcount,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_enable,
		input [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_readdata,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_readdatavalid,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_waitrequest,
		output [29:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_address,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_read,
		output 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_write,
		input 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_writeack,
		output [255:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_writedata,
		output [31:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_byteenable,
		output [4:0] 		avm_local_bb2_ld_memcoalesce__add_load_0_inst0_burstcount,
		output 		avm_local_bb3_st__18_inst0_enable,
		input [255:0] 		avm_local_bb3_st__18_inst0_readdata,
		input 		avm_local_bb3_st__18_inst0_readdatavalid,
		input 		avm_local_bb3_st__18_inst0_waitrequest,
		output [29:0] 		avm_local_bb3_st__18_inst0_address,
		output 		avm_local_bb3_st__18_inst0_read,
		output 		avm_local_bb3_st__18_inst0_write,
		input 		avm_local_bb3_st__18_inst0_writeack,
		output [255:0] 		avm_local_bb3_st__18_inst0_writedata,
		output [31:0] 		avm_local_bb3_st__18_inst0_byteenable,
		output [4:0] 		avm_local_bb3_st__18_inst0_burstcount
	);

// Responsible for interfacing a kernel with the outside world. It comprises a
// slave interface to specify the kernel arguments and retain kernel status. 

// This section of the wrapper implements the slave interface.
// twoXclock_consumer uses clock2x, even if nobody inside the kernel does. Keeps interface to acl_iface consistent for all kernels.
 reg start_NO_SHIFT_REG;
 reg started_NO_SHIFT_REG;
wire finish;
 reg [31:0] status_NO_SHIFT_REG;
wire has_a_write_pending;
wire has_a_lsu_active;
 reg [223:0] kernel_arguments_NO_SHIFT_REG;
 reg twoXclock_consumer_NO_SHIFT_REG /* synthesis  preserve  noprune  */;
 reg [31:0] workgroup_size_NO_SHIFT_REG;
 reg [31:0] global_size_NO_SHIFT_REG[2:0];
 reg [31:0] num_groups_NO_SHIFT_REG[2:0];
 reg [31:0] local_size_NO_SHIFT_REG[2:0];
 reg [31:0] work_dim_NO_SHIFT_REG;
 reg [31:0] global_offset_NO_SHIFT_REG[2:0];
 reg [63:0] profile_data_NO_SHIFT_REG;
 reg [31:0] profile_ctrl_NO_SHIFT_REG;
 reg [63:0] profile_start_cycle_NO_SHIFT_REG;
 reg [63:0] profile_stop_cycle_NO_SHIFT_REG;
wire dispatched_all_groups;
wire [31:0] group_id_tmp[2:0];
wire [31:0] global_id_base_out[2:0];
wire start_out;
wire [31:0] local_id[0:0][2:0];
wire [31:0] global_id[0:0][2:0];
wire [31:0] group_id[0:0][2:0];
wire iter_valid_in;
wire iter_stall_out;
wire stall_in;
wire stall_out;
wire valid_in;
wire valid_out;

always @(posedge clock2x or negedge resetn)
begin
	if (~(resetn))
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b1;
	end
end



// Work group dispatcher is responsible for issuing work-groups to id iterator(s)
acl_work_group_dispatcher group_dispatcher (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.num_groups(num_groups_NO_SHIFT_REG),
	.local_size(local_size_NO_SHIFT_REG),
	.stall_in(iter_stall_out),
	.valid_out(iter_valid_in),
	.group_id_out(group_id_tmp),
	.global_id_base_out(global_id_base_out),
	.start_out(start_out),
	.dispatched_all_groups(dispatched_all_groups)
);

defparam group_dispatcher.NUM_COPIES = 1;
defparam group_dispatcher.RUN_FOREVER = 0;


// This section of the wrapper implements an Avalon Slave Interface used to configure a kernel invocation.
// The few words words contain the status and the workgroup size registers.
// The remaining addressable space is reserved for kernel arguments.
 reg [63:0] cra_readdata_st1_NO_SHIFT_REG;
 reg [3:0] cra_addr_st1_NO_SHIFT_REG;
 reg cra_read_st1_NO_SHIFT_REG;
wire [63:0] bitenable;

assign bitenable[7:0] = (avs_cra_byteenable[0] ? 8'hFF : 8'h0);
assign bitenable[15:8] = (avs_cra_byteenable[1] ? 8'hFF : 8'h0);
assign bitenable[23:16] = (avs_cra_byteenable[2] ? 8'hFF : 8'h0);
assign bitenable[31:24] = (avs_cra_byteenable[3] ? 8'hFF : 8'h0);
assign bitenable[39:32] = (avs_cra_byteenable[4] ? 8'hFF : 8'h0);
assign bitenable[47:40] = (avs_cra_byteenable[5] ? 8'hFF : 8'h0);
assign bitenable[55:48] = (avs_cra_byteenable[6] ? 8'hFF : 8'h0);
assign bitenable[63:56] = (avs_cra_byteenable[7] ? 8'hFF : 8'h0);
assign cra_irq = (status_NO_SHIFT_REG[1] | status_NO_SHIFT_REG[3]);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		start_NO_SHIFT_REG <= 1'b0;
		started_NO_SHIFT_REG <= 1'b0;
		kernel_arguments_NO_SHIFT_REG <= 224'h0;
		status_NO_SHIFT_REG <= 32'h30000;
		profile_ctrl_NO_SHIFT_REG <= 32'h4;
		profile_start_cycle_NO_SHIFT_REG <= 64'h0;
		profile_stop_cycle_NO_SHIFT_REG <= 64'hFFFFFFFFFFFFFFFF;
		work_dim_NO_SHIFT_REG <= 32'h0;
		workgroup_size_NO_SHIFT_REG <= 32'h0;
		global_size_NO_SHIFT_REG[0] <= 32'h0;
		global_size_NO_SHIFT_REG[1] <= 32'h0;
		global_size_NO_SHIFT_REG[2] <= 32'h0;
		num_groups_NO_SHIFT_REG[0] <= 32'h0;
		num_groups_NO_SHIFT_REG[1] <= 32'h0;
		num_groups_NO_SHIFT_REG[2] <= 32'h0;
		local_size_NO_SHIFT_REG[0] <= 32'h0;
		local_size_NO_SHIFT_REG[1] <= 32'h0;
		local_size_NO_SHIFT_REG[2] <= 32'h0;
		global_offset_NO_SHIFT_REG[0] <= 32'h0;
		global_offset_NO_SHIFT_REG[1] <= 32'h0;
		global_offset_NO_SHIFT_REG[2] <= 32'h0;
	end
	else
	begin
		if (avs_cra_write)
		begin
			case (avs_cra_address)
				4'h0:
				begin
					status_NO_SHIFT_REG[31:16] <= 16'h3;
					status_NO_SHIFT_REG[15:0] <= ((status_NO_SHIFT_REG[15:0] & ~(bitenable[15:0])) | (avs_cra_writedata[15:0] & bitenable[15:0]));
				end

				4'h1:
				begin
					profile_ctrl_NO_SHIFT_REG <= ((profile_ctrl_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h3:
				begin
					profile_start_cycle_NO_SHIFT_REG[31:0] <= ((profile_start_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_start_cycle_NO_SHIFT_REG[63:32] <= ((profile_start_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h4:
				begin
					profile_stop_cycle_NO_SHIFT_REG[31:0] <= ((profile_stop_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_stop_cycle_NO_SHIFT_REG[63:32] <= ((profile_stop_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h5:
				begin
					work_dim_NO_SHIFT_REG <= ((work_dim_NO_SHIFT_REG & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					workgroup_size_NO_SHIFT_REG <= ((workgroup_size_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h6:
				begin
					global_size_NO_SHIFT_REG[0] <= ((global_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_size_NO_SHIFT_REG[1] <= ((global_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h7:
				begin
					global_size_NO_SHIFT_REG[2] <= ((global_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[0] <= ((num_groups_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h8:
				begin
					num_groups_NO_SHIFT_REG[1] <= ((num_groups_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[2] <= ((num_groups_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h9:
				begin
					local_size_NO_SHIFT_REG[0] <= ((local_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					local_size_NO_SHIFT_REG[1] <= ((local_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hA:
				begin
					local_size_NO_SHIFT_REG[2] <= ((local_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[0] <= ((global_offset_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hB:
				begin
					global_offset_NO_SHIFT_REG[1] <= ((global_offset_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[2] <= ((global_offset_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hC:
				begin
					kernel_arguments_NO_SHIFT_REG[31:0] <= ((kernel_arguments_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[63:32] <= ((kernel_arguments_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hD:
				begin
					kernel_arguments_NO_SHIFT_REG[95:64] <= ((kernel_arguments_NO_SHIFT_REG[95:64] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[127:96] <= ((kernel_arguments_NO_SHIFT_REG[127:96] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hE:
				begin
					kernel_arguments_NO_SHIFT_REG[159:128] <= ((kernel_arguments_NO_SHIFT_REG[159:128] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[191:160] <= ((kernel_arguments_NO_SHIFT_REG[191:160] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hF:
				begin
					kernel_arguments_NO_SHIFT_REG[223:192] <= ((kernel_arguments_NO_SHIFT_REG[223:192] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
				end

				default:
				begin
				end

			endcase
		end
		else
		begin
			if (status_NO_SHIFT_REG[0])
			begin
				start_NO_SHIFT_REG <= 1'b1;
			end
			if (start_NO_SHIFT_REG)
			begin
				status_NO_SHIFT_REG[0] <= 1'b0;
				started_NO_SHIFT_REG <= 1'b1;
			end
			if (started_NO_SHIFT_REG)
			begin
				start_NO_SHIFT_REG <= 1'b0;
			end
			if (finish)
			begin
				status_NO_SHIFT_REG[1] <= 1'b1;
				started_NO_SHIFT_REG <= 1'b0;
			end
		end
		status_NO_SHIFT_REG[11] <= 1'b0;
		status_NO_SHIFT_REG[12] <= (|has_a_lsu_active);
		status_NO_SHIFT_REG[13] <= (|has_a_write_pending);
		status_NO_SHIFT_REG[14] <= (|valid_in);
		status_NO_SHIFT_REG[15] <= started_NO_SHIFT_REG;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cra_read_st1_NO_SHIFT_REG <= 1'b0;
		cra_addr_st1_NO_SHIFT_REG <= 4'h0;
		cra_readdata_st1_NO_SHIFT_REG <= 64'h0;
	end
	else
	begin
		cra_read_st1_NO_SHIFT_REG <= avs_cra_read;
		cra_addr_st1_NO_SHIFT_REG <= avs_cra_address;
		case (avs_cra_address)
			4'h0:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= status_NO_SHIFT_REG;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h1:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= 'x;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h2:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h3:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h4:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			default:
			begin
				cra_readdata_st1_NO_SHIFT_REG <= status_NO_SHIFT_REG;
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		avs_cra_readdatavalid <= 1'b0;
		avs_cra_readdata <= 64'h0;
	end
	else
	begin
		avs_cra_readdatavalid <= cra_read_st1_NO_SHIFT_REG;
		case (cra_addr_st1_NO_SHIFT_REG)
			4'h2:
			begin
				avs_cra_readdata[63:0] <= profile_data_NO_SHIFT_REG;
			end

			default:
			begin
				avs_cra_readdata <= cra_readdata_st1_NO_SHIFT_REG;
			end

		endcase
	end
end


// Handshaking signals used to control data through the pipeline

// Determine when the kernel is finished.
acl_kernel_finish_detector kernel_finish_detector (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.wg_size(workgroup_size_NO_SHIFT_REG),
	.wg_dispatch_valid_out(iter_valid_in),
	.wg_dispatch_stall_in(iter_stall_out),
	.dispatched_all_groups(dispatched_all_groups),
	.kernel_copy_valid_out(valid_out),
	.kernel_copy_stall_in(stall_in),
	.pending_writes(has_a_write_pending),
	.finish(finish)
);

defparam kernel_finish_detector.TESSELLATION_SIZE = 0;
defparam kernel_finish_detector.NUM_COPIES = 1;
defparam kernel_finish_detector.WG_SIZE_W = 32;

assign stall_in = 1'b0;

// Creating ID iterator and kernel instance for every requested kernel copy

// ID iterator is responsible for iterating over all local ids for given work-groups
acl_id_iterator id_iter_inst0 (
	.clock(clock),
	.resetn(resetn),
	.start(start_out),
	.valid_in(iter_valid_in),
	.stall_out(iter_stall_out),
	.stall_in(stall_out),
	.valid_out(valid_in),
	.group_id_in(group_id_tmp),
	.global_id_base_in(global_id_base_out),
	.local_size(local_size_NO_SHIFT_REG),
	.global_size(global_size_NO_SHIFT_REG),
	.local_id(local_id[0]),
	.global_id(global_id[0]),
	.group_id(group_id[0])
);

defparam id_iter_inst0.LOCAL_WIDTH_X = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Y = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Z = 32;


// This section instantiates a kernel function block
kernel_mul_function kernel_mul_function_inst0 (
	.clock(clock),
	.resetn(resetn),
	.input_global_id_0(global_id[0][0]),
	.stall_out(stall_out),
	.valid_in(valid_in),
	.valid_out(valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size_NO_SHIFT_REG),
	.avm_local_bb1_ld__enable(avm_local_bb1_ld__inst0_enable),
	.avm_local_bb1_ld__readdata(avm_local_bb1_ld__inst0_readdata),
	.avm_local_bb1_ld__readdatavalid(avm_local_bb1_ld__inst0_readdatavalid),
	.avm_local_bb1_ld__waitrequest(avm_local_bb1_ld__inst0_waitrequest),
	.avm_local_bb1_ld__address(avm_local_bb1_ld__inst0_address),
	.avm_local_bb1_ld__read(avm_local_bb1_ld__inst0_read),
	.avm_local_bb1_ld__write(avm_local_bb1_ld__inst0_write),
	.avm_local_bb1_ld__writeack(avm_local_bb1_ld__inst0_writeack),
	.avm_local_bb1_ld__writedata(avm_local_bb1_ld__inst0_writedata),
	.avm_local_bb1_ld__byteenable(avm_local_bb1_ld__inst0_byteenable),
	.avm_local_bb1_ld__burstcount(avm_local_bb1_ld__inst0_burstcount),
	.avm_local_bb2_ld_memcoalesce__v_load_0_enable(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_enable),
	.avm_local_bb2_ld_memcoalesce__v_load_0_readdata(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_readdata),
	.avm_local_bb2_ld_memcoalesce__v_load_0_readdatavalid(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_readdatavalid),
	.avm_local_bb2_ld_memcoalesce__v_load_0_waitrequest(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_waitrequest),
	.avm_local_bb2_ld_memcoalesce__v_load_0_address(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_address),
	.avm_local_bb2_ld_memcoalesce__v_load_0_read(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_read),
	.avm_local_bb2_ld_memcoalesce__v_load_0_write(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_write),
	.avm_local_bb2_ld_memcoalesce__v_load_0_writeack(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_writeack),
	.avm_local_bb2_ld_memcoalesce__v_load_0_writedata(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_writedata),
	.avm_local_bb2_ld_memcoalesce__v_load_0_byteenable(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_byteenable),
	.avm_local_bb2_ld_memcoalesce__v_load_0_burstcount(avm_local_bb2_ld_memcoalesce__v_load_0_inst0_burstcount),
	.avm_local_bb2_ld_memcoalesce__add_load_0_enable(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_enable),
	.avm_local_bb2_ld_memcoalesce__add_load_0_readdata(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_readdata),
	.avm_local_bb2_ld_memcoalesce__add_load_0_readdatavalid(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_readdatavalid),
	.avm_local_bb2_ld_memcoalesce__add_load_0_waitrequest(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_waitrequest),
	.avm_local_bb2_ld_memcoalesce__add_load_0_address(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_address),
	.avm_local_bb2_ld_memcoalesce__add_load_0_read(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_read),
	.avm_local_bb2_ld_memcoalesce__add_load_0_write(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_write),
	.avm_local_bb2_ld_memcoalesce__add_load_0_writeack(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_writeack),
	.avm_local_bb2_ld_memcoalesce__add_load_0_writedata(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_writedata),
	.avm_local_bb2_ld_memcoalesce__add_load_0_byteenable(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_byteenable),
	.avm_local_bb2_ld_memcoalesce__add_load_0_burstcount(avm_local_bb2_ld_memcoalesce__add_load_0_inst0_burstcount),
	.avm_local_bb3_st__18_enable(avm_local_bb3_st__18_inst0_enable),
	.avm_local_bb3_st__18_readdata(avm_local_bb3_st__18_inst0_readdata),
	.avm_local_bb3_st__18_readdatavalid(avm_local_bb3_st__18_inst0_readdatavalid),
	.avm_local_bb3_st__18_waitrequest(avm_local_bb3_st__18_inst0_waitrequest),
	.avm_local_bb3_st__18_address(avm_local_bb3_st__18_inst0_address),
	.avm_local_bb3_st__18_read(avm_local_bb3_st__18_inst0_read),
	.avm_local_bb3_st__18_write(avm_local_bb3_st__18_inst0_write),
	.avm_local_bb3_st__18_writeack(avm_local_bb3_st__18_inst0_writeack),
	.avm_local_bb3_st__18_writedata(avm_local_bb3_st__18_inst0_writedata),
	.avm_local_bb3_st__18_byteenable(avm_local_bb3_st__18_inst0_byteenable),
	.avm_local_bb3_st__18_burstcount(avm_local_bb3_st__18_inst0_burstcount),
	.start(start_out),
	.input_size(kernel_arguments_NO_SHIFT_REG[223:192]),
	.clock2x(clock2x),
	.input__mul(kernel_arguments_NO_SHIFT_REG[191:128]),
	.input_global_size_0(global_size_NO_SHIFT_REG[0]),
	.input__v(kernel_arguments_NO_SHIFT_REG[127:64]),
	.input__add(kernel_arguments_NO_SHIFT_REG[63:0]),
	.has_a_write_pending(has_a_write_pending),
	.has_a_lsu_active(has_a_lsu_active)
);



endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module kernel_mul_sys_cycle_time
	(
		input 		clock,
		input 		resetn,
		output [31:0] 		cur_cycle
	);


 reg [31:0] cur_count_NO_SHIFT_REG;

assign cur_cycle = cur_count_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cur_count_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		cur_count_NO_SHIFT_REG <= (cur_count_NO_SHIFT_REG + 32'h1);
	end
end

endmodule

