---
# tutorial --> https://www.youtube.com/watch?v=EzQ-p41wNEE
marp: true
# theme: gaia
theme: uncover
class: invert
# style: |
#     section h2 {
#         text-align: left;
#     }
paginate: true
# backgroundImage: url('https://url/to/cutoff/image.png')
# math: mathjax
# header: 'header'
# footer: 'footer'
---

# Git: Workflow and Conventions for Embedded Systems

Basics, Branching, and Commit Message Conventions

<span style="color:blue;">**Presented by**</span>
Pasakorn Tiwatthanont [10/2024]

<!-- _paginate: hide -->

---

## Outlines

- **Basic Workflow Steps**
- **Branching and the Convention**
- **Commit Message Convention**

<!-- 3 เรื่องที่จะพูดถึง
1. พื้นฐานและแนวคิด การใช้งาน Git
2. การทำงานร่วมกัน หลักการ branching ทำเมื่อไร และควรทำอย่างไร
3. เพื่อการ maintainance, commit message ที่เข้าใจง่าย ทำให้ทีมทำงานง่าย
 -->

---

## Introduction to Git Workflow

- **What is Git Workflow?**
  - A series of steps to manage code changes and collaborate effectively.
- **Why it’s Important?**
  - Keeps codebase organized
  - Enables smooth collaboration
  - Minimizes conflicts and errors

<!-- โดยสรุปนะครับ
Git workflow คือลำดับขั้นตอนการทำงาน ที่ทำให้ การทำงานร่วมกัน สอดประสาน
ซึ่งสำคัญมาก ทั้งในตอนที่นำ features มารวมกัน และตอนที่ทีม ต้องกลับมา maintainance code
 -->

---

## Basic Git Workflow Steps

1. **Clone the Repository**
   - Start by cloning, to have a local copy.
2. **Create a New Branch**
   - Each branch has just one objective (feature or fix).
3. **Make Changes & Commit Regularly**
   - Commit often, with small changes and meaningful messages.

<!-- Basic แล้ว มีลำดับขั้นตอนการทำงาน บ่อยๆ อยู่ 6 ข้อ
แต่ เราจะลองพิจารณา 3 ข้นแรก พร้อมกับลอง practice ผ่าน command-line กันครับ

ข้อแรก Git clone คือการนำ code ลงมาจาก repository
ข้อสอง Git branch คิดการแตกกิ่งออก เพื่อแก้ไขตามเป้าหมาย
ข้อสาม Git commit คือการบันทึก changes ที่เกิดขึ้น พร้อมกับคำอธิบาย

ok ไปลองใน command-line กันครับ
ก่อนจะกลับมาต่อข้อที่เหลือ
 -->

---

## Basic Git Workflow Steps (cont.)

4. **Sync with the Main Branch Regularly**
   - Pull to avoid conflicts.
5. **Push Your Branch to Remote**
   - Push your changes (commits) when you’re ready for review.
6. **Create a Pull Request (PR), then Merge**
   - Get feedback and approval for your changes before merging.

<!-- ต่อกับ 3 ข้อที่เหลือ

ข้อสี่ Git pull คือการรับความเปลี่ยนแปลง ที่อาจเกิดขึ้นจาก repository
ข้อห้า Git push คือการส่งความเปลี่ยนแปลง ขึ้นไปบันทึกที่ repository
ข้อหก การ pull request, คือการขอให้ระบบ เช่น Gitlan
  ทำบันทึก แจ้งให้ "ผู้ดูแล" ทราบ ว่ามี branch ที่เราต้องการให้รวมเข้ากับ branch หลัก
  ซึ่งมักสอดคล้องกับ เหตุผลตาม issue ที่เราขอแตก branch ออกมา

ok ลองไปดูในการใช้งานจริง กันครับ
 -->

---

## Git GUI Clients – Alternatives to the CLI

1. **GitKraken** – Intuitive, cross-platform, with built-in support for GitFlow and visualizations. (Linux, MacOS, Windows)
2. **Sourcetree** – Comprehensive interface for advanced Git features, by Atlassian. (MacOS, Windows)
3. **GitK** – Fast, simple, and free for Linux users. (Linux, MacOS, Windows)

<!-- ทีนี้ ก่อนจบเรื่องพื้นฐาน ก็ขอฝาก Git GUI client ไว้ครับ

ตัวแรก GitKraken คือ the best, แต่ต้องจ่ายเงิน หากจะนำมาใช้กับ private repository
ตัวที่สอง Sourcetree เป็นที่นิยมเหมือนกัน สามารถใช้งานกับ private repository ได้จำนวนหนึ่ง แต่มี support Linux
ตัวที่สาม GitK เป็น opensource ที่พอใช้งานได้ ไม่มีข้อจำกัด  แต่ interface ออกแยยไม่ค่่อยดี, หลักๆไว้ดู topology ระหว่าง branches ได้
 -->

---

## When Do We Need Branching?

**Collaborative Development**: Each team member can work on their own branch to avoid conflicts.

- **Feature Development**
  - Isolate new features to avoid disrupting the main codebase.
- **Bug Fixes**
  - Use separate branches for each bug to keep fixes organized.
- **Experimentation & Prototyping**
  - Keep experimental code on its own branch.

<!-- หลังจากทราบเรื่องการ เก็บความเปลี่ยนแปลงด้วย Git แล้ว เราจะเริ่มทำความเข้าใจ branching

เบื้องต้น เรา branch เพื่อทำงานร่วมกัน โดยไม่เกิด conflict
เราสร้าง 1 branch เพื่อรองรับ 1 issue  นั่นคือ 1 จุดมุ่งหมาย

ซึ่งโดยความนิยม จะแบ่ง categories ได้ประมาณ 3 คือ
1. feature branch เพื่อสร้าง functions ใหม่
2. bugfix branch เพื่อแก้ไขข้อผิดพลาด
3. experiment branch เพื่อทดลองอะไรบางอย่าง ซึ่งอาจจะไม่ถูก merged กลับก็ได้
 -->

---

![bg h:100% left](git-workflow_for_es/branching_strategy_1.png)

**Feature Branches**
Isolate new features to avoid disrupting the main codebase.

<!-- ok เพื่อให้เห็นภาพ

ภาพแรกคือ ตามเป้าหมายของการ branch
นั่นคือไม่ให้เกิด conflict ระหว่าง developers กันเอง

จะเห็นว่า ระหว่างที่นายแดงแก้ไข นายเหลือง ก็สามารถทำงานได้ และ merge กลับเข้าไป
ส่วนนายแดง ได้ merge code ของนายเหลืองเข้ามา ขณะที่กำลังแก้ไข
แล้วจึง merge กลับเข้า master ในท้ายที่สุด

ข้อสังเกต user ซึ่งใช้งาน master branch จะได้ code ใหม่ไปใช้งานทันที ทำให้เสี่ยงกับ business
 -->

---

![bg h:100% left](git-workflow_for_es/branching_strategy_2.png)

**Develop Branch**
`feature/<...>` is branched to develop a new feature,
which will be merged on `develop`, released on `main`.

<!-- ดังนั้น จึงมีการแยก ระหว่าง branch 'develop' และ 'master'

การแตก brnach เพื่อพัฒนาจะทำบน 'develop' ทั้งหมด
จนเมื่อจะส่งมอบให้ user ใช้งาน จึงมีการ merge เข้าไปยัง master
 -->

---

![bg h:100% left](git-workflow_for_es/branching_fix.png)

**Bugfix Branch**
`bugfix/<...>` is binded with one specific issue.

<!-- สำหรับการแก้ไขข้อผิดพลาด เราอาจเลือกที่จะแก้จาก branch 'master' หรือ
หรือ 'develop' ก็ได้ ขึ้นอยู่กับความเร่งด่วน

และเมื่อการแก้ไขเสร็จแล้ว ก็ค่อย merge กลับเข้าไปยัง 'develop' และ 'master'
ซึ่งทั้งนี้ ไม่มีการ merge 'master' กลับเข้า 'develop'
 -->

---

## Branch Naming Conventions

- **Feature Branches**: `feature/<description>`
  - Example: `feature/1-led-running`
- **Bug Fix Branches**: `bugfix/<description>` or `fix/<description>`
  - Example: `fix/2-uart-unstable`
- **Documentation Branches**: `docs/<description>`
  - Example: `docs/3-update-readme`

**Note**: always put an issue number in front of the description.

<!-- ท้ายสุดของหัวข้อที่สอง นี้คือการสรุป naming convention ของ branch

เริ่มต้นด้วย category
ซึ่งแยกได้ 3 categories ตาม objectives ที่นำเสนอมาคือ feature, bugfix, และ document

ต่อมา, หลัง slash, ตัวเลขที่จะโยงกลับไปยัง issue และชื่อ ที่มีกติกาคือ small-cap และ hyphen
 -->

---

## Commit Message Convention

- **Format**:

  ```xml
  <type>(<scope>): <subject>
  <body> (optional)
  <footer> (optional)
  ```

- **Why Commit Conventions Matter?**
  - Helps track changes easily
  - Provides context to team members
  - Simplifies debugging and maintenance

<!-- หัวข้อสุดท้าย เรื่อง Commit message convention
หลักการคือ ต้องทำให้ค้นหาได้ และเข้าใจได้
 -->

---

## Commit Message Structure

- **Scope** (optional):
  - Specifies the area of the code affected, e.g., `LED`, `IO`, or `UART`.
- **Subject**:
  - Brief, imperative description of the change.
- **Body** (optional):
  - Detailed explanation of what was changed and why.
- **Footer** (optional):
  - References issue IDs or highlights breaking changes.

<!-- ภายใน message จะประกอบด้วย scope, subject, body, และ footer

scope และ subject เป็นส่วนสำคัญ
- scope จะระบุส่วน module ของ code ที่ถูกกระทบจากการแก้ไข
- subject คือคำอธิบายที่ส้้นที่สุด เพื่อ changes ใน commit นั้น

ส่วน body และ footer จะมีหรือไม่ก็ได้
- body จะขยายความ subject เริ่มด้วยที่มาที่ไปของปัญหา, วิธีการแก้ไข, และอื่นๆ
- footer จะเชื่อมโยงไปยัง issue ที่เกี่ยวข้อง
 -->

---

## Types of Commit Messages

- **feat**: New feature – `feat(LED): add LED running`
- **refactor**: Easier to understand – `refactor(UART): small-capitalize var`
- **fix**: Bug fix – `fix(IOC): pull-up unused pins`
- **test**: Adding tests – `test(UART): add tests`
- **docs**: Documentation – `docs: update setup instructions`
- **chore**: Etc. – `chore: add EEPROM cleaner script`

<!-- ถัดมา ลองมาดูตัวอย่าง แยกตาม type

1. feat เป็น commit เพื่อพัฒนา feature  ตัวอย่าง feature ของ module LED เพื่อทำไฟวิ่ง
2. refactor เพื่อทำให้เข้าใจ code ได้ดีขึ้น  ตัวอย่าง refactor code ใน module UART ให้ inside variables ทั้งหมด ชื่อตัวเล็ก
3. fix เพื่อซ่อมข้อผิดพลาด ด้วยการ reconfigure ให้ CubeMX ใส่ pullup ให้ unused pins
4. test สร้างการทดสอบ ให้ module UART
5. docs เป็น commit ที่แก้ไขเอกสาร อธิบาย code / project อย่างเดียว
6. chore เป็น commit ที่ทำเรื่องอื่นๆ เล็กๆน้อยๆ ที่ไม่ได้ระบุมา เช่น สร้าง script เพื่อทำงานล้าง EEPROM ช่วยในการพัฒนา
 -->

---

## Example Commit Message

```text
feat(LED): lit LED responses

LED light displays the state correcponding to the activity that
user commanded.

Closes #123
```

- `feat(LED)`: Type and scope.
- **Subject**: "lit LED responses"
- **Body**: Adds context for the team.
- **Footer**: Links to issue #123.

<!-- อีกตัวอย่างหนึ่ง ที่มีครบทั้ง 4 ส่วน

โดยใน commit message นี้มี
1. type และ scope บอกว่าเป็น feature ภายใน module LED
2. subject บอกว่าแก้ไขเรื่อง กระพริบแสง LED เพื่อตอบสนอง
3. ส่วน body ขยายความว่า เป็น reponse ต่อคำสั่งที่มาจาก user
4. footer ระบุว่าเชื่อมโยงกับ issue 123
 -->

---

## Summary and Best Practices

- **Follow Branching Conventions**:
  - Don't forget the structure, and naming.
- **Use Descriptive Commit Messages**:
  - Make your friend understand changes at a glance.
- **Commit Often and Small**:
  - Keeps changes manageable and reduces conflicts.
- **Review Regularly**:
  - Pull requests and feedback ensure high-quality code.

<!-- และนั่นคือทั้งหมดของ Git basic workflow และ conventions
ที่เราควรทำเหมือนๆกัน เพื่อให้เข้ากันได้ง่าย และ ดูแล code ของเราได้อย่างมีประสิทธิภาพ

ก่อนจบ ขอฝากว่า
- follow the convention ในการ branching
- เขียน commit message ให้สื่อความหมาย
- เพียร sync กับ repository เพื่อป้องกัน conflict ระหว่าง developers
- ทำ code reviews บ่อยๆ, โดยเฉพาะก่อน merge จะช่วยกระจายความรู้ และป้องกันขอผิดพลาด
 -->
