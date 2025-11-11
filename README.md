# Resume Management System

A LaTeX-based resume system that helps you maintain a master resume and automatically generate tailored versions for each job application.

## 📁 Repository Structure

```
resumes/
├── master.tex              # Master resume with ALL experiences and projects
├── resume_name.txt         # Global resume name (optional, defaults to "resume")
├── applications/           # Job-specific resumes
│   └── {company}/          # Company directory (auto-created)
│       └── {role}/         # Role directory (auto-created)
│           └── {version}/  # Version directory (auto-created, starts at 1)
│               ├── {resume_name}.tex     # Tailored resume LaTeX file
│               ├── {resume_name}.pdf    # Compiled PDF (if generated)
│               └── job_description.txt   # Original job posting
├── cleanup.sh             # Script to remove LaTeX auxiliary files
```

**Example:**

```
resumes/
├── resume_name.txt         # Contains: "Ri_Hong"
└── applications/
    └── aws/
        └── backend-engineer-intern/
            ├── 1/
            │   ├── Ri_Hong.tex
            │   ├── Ri_Hong.pdf
            │   └── job_description.txt
            └── 2/
                ├── Ri_Hong.tex
                ├── Ri_Hong.pdf
                └── job_description.txt
```

## 🚀 Quick Start

### 1. Paste Job Description

Simply paste the full job posting into Cursor and ask it to tailor your resume. Optionally, you can specify a custom name for the resume files (e.g., "name it Ri_Hong" or "save as John_Doe").

The AI will:

1. **Automatically extract** the company name and role title from the description
   - If unclear, Cursor will **ask you** to provide the company and role explicitly
2. **Determine version number**:
   - If this is the first resume for this company/role, creates version `1`
   - If versions already exist, finds the highest version `n` and creates version `n + 1`
3. **Determine resume name** (global setting):
   - If you specified a custom name, uses that (sanitized: spaces → underscores) and saves to root `resume_name.txt`
   - Otherwise, checks root `resume_name.txt` file
   - If neither exists, defaults to "resume"
   - The name applies to all generated resumes globally
4. **Create** the directory structure: `applications/{company}/{role}/{version}/`
5. **Save** the job description to `applications/{company}/{role}/{version}/job_description.txt`
6. **Read** `master.tex` to see all available experiences
7. **Generate** a tailored resume in `applications/{company}/{role}/{version}/{resume_name}.tex`

**Example:**

```
Paste the job description here:

Software Engineering Intern at Google
We're looking for someone with experience in distributed systems,
Go, Kubernetes, and cloud infrastructure...

[full job description]

Please name this resume Ri_Hong
```

**Result:**

- First time (with "name it Ri_Hong"): Creates `applications/google/software-engineering-intern/1/` with `Ri_Hong.tex`, saves "Ri_Hong" to root `resume_name.txt`
- Second time (same role): Creates `applications/google/software-engineering-intern/2/` with `Ri_Hong.tex` (uses global name)
- Third time (different company, same global name): Creates `applications/aws/backend-engineer/1/` with `Ri_Hong.tex`

**Custom Resume Names (Global Setting):**

- Specify in your request: "name it Ri_Hong", "save as John_Doe", etc.
- The name is sanitized (spaces become underscores, special chars removed)
- Saved to `resume_name.txt` in the **root directory** (applies to all resumes)
- All files (`.tex`, `.pdf`) across all jobs use this global name
- You can manually edit root `resume_name.txt` to change the name globally

That's it! Cursor handles everything automatically, including version management and custom naming.

### 2. Compile and Review

```bash
cd applications/google/software-engineering-intern/1
pdflatex Ri_Hong.tex  # or resume.tex if using default name
```

Or use your LaTeX editor to compile and view the PDF.

**Note:**

- If you have multiple versions for the same role, navigate to the specific version directory (e.g., `applications/google/software-engineering-intern/2/`)
- The filename matches the name in `resume_name.txt` (or "resume" if not specified)

## 📋 Master Resume (`master.tex`)

The `master.tex` file is your **single source of truth**. It contains:

- All your work experiences (even if not all fit on one page)
- All your projects
- All your skills
- Education and contact information

**Important:** When adding new experiences or projects, always add them to `master.tex` first. The AI will then select from the master when tailoring for specific jobs.

## 🎯 Workflow

1. **Maintain Master Resume**: Keep `master.tex` updated with all your experiences
2. **Paste Job Description**: Copy the full job posting and paste it into Cursor
3. **AI Tailors Resume**: Cursor automatically:
   - Extracts company and role (or asks if unclear)
   - Determines the next version number
   - Determines resume name (from your request, root `resume_name.txt`, or defaults to "resume")
   - Creates the directory structure `applications/{company}/{role}/{version}/`
   - Saves the job description
   - If you specified a new resume name, saves it to root `resume_name.txt` (global setting)
   - Generates a tailored resume with the global name
4. **Compile & Submit**: Generate PDF and submit your application

**Multiple Versions:** If you want multiple tailored resumes for the same role (e.g., emphasizing different skills), simply paste the job description again. Cursor will automatically create the next version number.

**Custom Resume Names (Global):** Specify a custom name in your request (e.g., "name it Ri_Hong") to set it globally. The name is saved to root `resume_name.txt` and used for all generated resume files across all jobs. Edit the root file to change it globally.

## 🛠️ Utilities

### Cleanup Script

Remove LaTeX auxiliary files:

```bash
./cleanup.sh
```

This removes `.aux`, `.log`, `.out`, `.synctex.gz` files while keeping `.tex` and `.pdf` files.

### View All Job Applications

List companies:

```bash
ls applications/
```

List roles for a company:

```bash
ls applications/google/
```

List versions for a role:

```bash
ls applications/google/software-engineering-intern/
```

Each version directory contains a tailored resume and job description.

## 📝 Best Practices

1. **Always update master.tex first**: When you have a new experience or project, add it to `master.tex` before tailoring resumes
2. **Keep job descriptions**: The `job_description.txt` file is automatically saved for your reference
3. **Use custom resume names**: Specify a name when creating resumes (e.g., "name it Ri_Hong") to set it globally. Edit root `resume_name.txt` to change it for all resumes
4. **Version control**: Commit your master resume and job-specific resumes to track changes
5. **Manual edits**: You can always edit the resume `.tex` file directly, or edit root `resume_name.txt` to change the filename globally

## 🔄 Updating the Master Resume

When you need to add new experiences to the master:

1. Edit `master.tex` directly
2. Add the new experience/project in the appropriate section
3. Don't worry about length - the master can be multiple pages
4. When tailoring for jobs, the AI will automatically select the most relevant items

## 🎨 LaTeX Formatting

The resume uses custom LaTeX macros. Always preserve:

- `\resumeSubheading` for work experiences
- `\resumeProjectHeading` for projects
- `\resumeItem` for bullet points
- `\resumeItemListStart` / `\resumeItemListEnd` for lists

See `master.tex` for examples of proper formatting.

## ❓ FAQ

**Q: Can I have multiple versions of the master resume?**  
A: No, keep one `master.tex` with everything. The system is designed to select from a single source of truth.

**Q: What if a job directory already exists?**  
A: Cursor will automatically create a new version. For example, if `applications/google/software-engineer/1/` exists, it will create `applications/google/software-engineer/2/`. This allows you to have multiple tailored resumes for the same role.

**Q: How do I delete a job application?**  
A: Delete the specific version directory: `rm -rf applications/{company}/{role}/{version}/`  
Or delete all versions for a role: `rm -rf applications/{company}/{role}/`  
Or delete all roles for a company: `rm -rf applications/{company}/`

**Q: Can I manually edit tailored resumes?**  
A: Yes! The AI generates a starting point, but you can always edit the resume `.tex` file directly.

**Q: How do I customize the resume filename?**  
A: Specify it when creating the resume (e.g., "name it Ri_Hong") or manually edit `resume_name.txt` in the **root directory**. The name is global and applies to all generated resume files across all jobs. The name is sanitized (spaces → underscores) and used for all `.tex` and `.pdf` files.

**Q: Do I need to run any scripts?**  
A: No! Just paste the job description and Cursor handles everything automatically.

## 📄 License

This resume template is adapted from Jake Gutierrez's LaTeX resume template.
