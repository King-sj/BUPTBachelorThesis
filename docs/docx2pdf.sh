#!/bin/bash
# 切换到脚本所在目录
cd "$(dirname "$0")"
echo "当前工作目录: $(pwd)"

# 从 docs/ 目录复制最新文件
cp "../../docs/任务书.docx" ./task.docx
cp "../../docs/北京邮电大学本科毕业设计（论文）开题报告.docx" ./openingReport.docx
cp "../../docs/北京邮电大学本科毕业设计（论文）中期进展情况检查表.docx" ./interimReport.docx
cp "../../docs/附件3：北京邮电大学教师指导本科毕业设计（论文）记录表.docx" ./guidance.docx
echo "文件复制完成"

ls *.docx
libreoffice --headless --convert-to pdf *.docx