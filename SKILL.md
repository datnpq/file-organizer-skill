---
name: file-organizer
description: Analyze, reorganize, and maintain folder structures (Project, Business, Personal). Uses deterministic file counting (pre/post) to ensure no data loss. Supports periodic cleanup, renaming to snake_case (no accents), and archiving old files. Use when: (1) Reorganizing a messy directory, (2) Setting up a new project structure, (3) Performing periodic cleanup of Downloads/Desktop, (4) Renaming batches of files for consistency.
---

# File Organizer Skill

This skill provides a systematic workflow for organizing files and folders while ensuring 100% data preservation.

## Critical Rules

1.  **NEVER DELETE FILES** - Only move or rename.
2.  **DETERMINISTIC VERIFICATION** - Always count total files BEFORE and AFTER using `scripts/count_files.sh`.
3.  **USER APPROVAL REQUIRED** - Always present an implementation plan before making changes.
4.  **INDEXING** - Create or update an `INDEX.md` in the root of the organized folder to describe the structure.
5.  **NAMING CONVENTION** - Use `snake_case`, lowercase, and no accents (convert Vietnamese characters).

## Workflows

### 1. First-Time Organization

Use when a folder is completely disorganized.

1.  **Survey:** Count initial files using `scripts/count_files.sh`.
2.  **Analysis:** Categorize files by type, date, or purpose.
3.  **Planning:** Propose a structure (e.g., numbered folders like `01_Work`, `02_Personal`).
4.  **Execution:** Create folders and move files in small batches.
5.  **Verification:** Count files again to ensure totals match.
6.  **Documentation:** Create `INDEX.md`.

### 2. Periodic Cleanup

Use for maintaining already organized folders (e.g., Downloads, Desktop).

1.  **Scan:** Identify files at the root (unsorted) or files with non-compliant names.
2.  **Propose:** Suggest moving unsorted files to existing categories or archiving files older than 6 months.
3.  **Execute:** Rename using `scripts/rename_snake_case.sh` and move files.

### 3. Renaming Batch

Use to standardize file naming across a directory.

1.  **Identify:** List all files with spaces, accents, or inconsistent casing.
2.  **Batch Process:** Use `scripts/rename_snake_case.sh` on the identified files.

## Bundled Resources

### Scripts (`scripts/`)

- `count_files.sh`: Counts all files in a directory recursively.
- `rename_snake_case.sh`: Renames a file/folder to snake_case, lowercase, and removes accents.

### References (`references/`)

- `structures.md`: Examples of recommended folder structures for different domains.

### Assets (`assets/`)

- `INDEX_TEMPLATE.md`: Template for the `INDEX.md` file.

## Recommended Structures (References)

See [references/structures.md](references/structures.md) for details on:
- **Project Structure**: (e.g., `01_Design`, `02_Development`, `03_Docs`)
- **Company Structure**: (e.g., `00_BOD`, `01_HR`, `02_Finance`)
- **Personal Structure**: (e.g., `01_Work`, `02_Learning`, `03_Life`)
