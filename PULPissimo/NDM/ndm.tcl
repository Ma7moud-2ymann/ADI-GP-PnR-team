# --------------------------------------------- # 
# --------------- NDM Creation  --------------- # 
# --------------------------------------------- # 

# Set library paths
set common_path "/home/ICer/Desktop/pulp/libraries/SAED32"
set MainSearchDir "/home/ICer/Desktop/pulp"

# Library directories
set dbFilesOfRVT "$common_path/STD"
set dbFilesOfIO "$common_path/IO"
set dbFilesOfSram "$common_path/SRAM"
set dbFilesOfpll "$common_path/PLL"

# Technology file
set tech_file_path "/home/ICer/Desktop/pulp/libraries/SAED32/saed32nm_1p9m_mw.tf"

# Library names
set lib_name "1_ndm"

# DB files
set target_library "$dbFilesOfRVT/saed32rvt_ss0p95vn40c.db"
set target_librart_2 "$dbFilesOfRVT/saed32rvt_ff0p95vn40c.db"
set io_library "$dbFilesOfIO/saed32io_wb_ss0p95vn40c_2p25v.db"
set sram_library "$dbFilesOfSram/saed32sram_ss0p95vn40c.db"
set pll_library "$dbFilesOfpll/saed32pll_ss0p95vn40c_2p25v.db"

# LEF files
set std_cell_lef "$common_path/saed32nm_rvt_1p9m.lef"
set io_lef "$dbFilesOfIO/saed32_io_wb_all.lef"
set sram_lef "$dbFilesOfSram/saed32sram.lef"
set pll_lef "$dbFilesOfpll/saed32_PLL.lef"

# ======= Create Workspace ======= #
create_workspace -flow exploration -technology ${tech_file_path} $lib_name

# ======= Read db files ======= # 
# Read standard cell library
read_db $target_library

# Read IO library
read_db $io_library

# Read SRAM library
read_db $sram_library

# Read PLL library
read_db $pll_library

# ======= Read LEF files ======= # 
# Read standard cell LEF
read_lef $std_cell_lef

# Read IO LEF
read_lef $io_lef

# Read SRAM LEF
read_lef $sram_lef

# Read PLL LEF
read_lef $pll_lef

# ======= Change Options ======= #
set_app_options -list {lib.workspace.keep_all_physical_cells {true}}
set_app_options -list {lib.workspace.save_design_views {true}}
set_app_options -list {lib.workspace.save_layout_views {true}}
set_app_options -list {design.enable_lib_cell_editing {mutable}}

# ======= Partitions libraries ======= # 
group_libs

# ======= Check & commit workspace ======= # 
# Create output directory if it doesn't exist
file mkdir "/home/ICer/Desktop/pulp/ndm/PLL_ndm"
process_workspaces -directory "/home/ICer/Desktop/pulp/ndm/PLL_ndm" -output $lib_name

# ======= quit ======= # 
quit
